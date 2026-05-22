using Avalonia;
using Avalonia.Controls;
using Avalonia.Input;
using Avalonia.Interactivity;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class WorkshopPlanningControl : UserControl
{
    private List<Workshop> workshops = new List<Workshop>();
    private List<PlanIconItem> planIcons = new List<PlanIconItem>();
    private List<PlanIconBackup> savedBackup = new List<PlanIconBackup>();
    private Dictionary<string, Bitmap> iconBitmaps = new Dictionary<string, Bitmap>();

    private string? dragIconType;
    private PlanIconItem? movingItem;
    private PlanIconItem? selectedItem;
    private Point moveStart;
    private double iconStartX;
    private double iconStartY;
    private double zoom = 1.0;
    private ScaleTransform zoomTransform = new ScaleTransform(1, 1);

    public WorkshopPlanningControl()
    {
        InitializeComponent();
        ZoomGrid.RenderTransform = zoomTransform;
        LoadToolbarIcons();
        AddHandler(PointerReleasedEvent, GlobalPointerReleased, RoutingStrategies.Tunnel | RoutingStrategies.Bubble);
        InitData();
    }

    private async void InitData()
    {
        workshops = await App.DbContext.Workshops
            .Include(w => w.WorkshopPlanItems)
            .OrderBy(w => w.WorkshopName)
            .ToListAsync();

        WorkshopComboBox.Items.Clear();
        foreach (var workshop in workshops)
            WorkshopComboBox.Items.Add(workshop.WorkshopName);

        if (WorkshopComboBox.ItemCount > 0)
            WorkshopComboBox.SelectedIndex = 0;
    }

    private void LoadToolbarIcons()
    {
        var folder = Path.Combine(AppContext.BaseDirectory, "WorkshopAssets", "icons");
        iconBitmaps["Equipment"] = new Bitmap(Path.Combine(folder, "Equipment.png"));
        iconBitmaps["Exit"] = new Bitmap(Path.Combine(folder, "Exit.jpg"));
        iconBitmaps["FireExtinguisher"] = new Bitmap(Path.Combine(folder, "FireExtinguisher.png"));
        iconBitmaps["FirstAid"] = new Bitmap(Path.Combine(folder, "FirstAid.png"));

        ToolEquipmentImage.Source = iconBitmaps["Equipment"];
        ToolExitImage.Source = iconBitmaps["Exit"];
        ToolFireImage.Source = iconBitmaps["FireExtinguisher"];
        ToolFirstAidImage.Source = iconBitmaps["FirstAid"];
    }

    private void WorkshopSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (WorkshopComboBox.SelectedIndex < 0 || WorkshopComboBox.SelectedIndex >= workshops.Count)
            return;

        LoadWorkshopPlan(workshops[WorkshopComboBox.SelectedIndex]);
    }

    private void LoadWorkshopPlan(Workshop workshop)
    {
        ClearPlanIcons();
        selectedItem = null;

        using var stream = new MemoryStream(workshop.PlanImage);
        var bitmap = new Bitmap(stream);
        PlanBackgroundImage.Source = bitmap;
        PlanCanvas.Width = bitmap.PixelSize.Width;
        PlanCanvas.Height = bitmap.PixelSize.Height;

        savedBackup = new List<PlanIconBackup>();
        foreach (var item in workshop.WorkshopPlanItems)
        {
            savedBackup.Add(new PlanIconBackup
            {
                IconType = item.IconType,
                PosX = item.PosX,
                PosY = item.PosY
            });

            AddPlanIcon(item.IconType, (double)item.PosX, (double)item.PosY, item.IdWorkshopPlanItem);
        }

        MessageTextBlock.Text = "";
    }

    private void ClearPlanIcons()
    {
        var toRemove = PlanCanvas.Children.Where(c => c != PlanBackgroundImage).ToList();
        foreach (var child in toRemove)
            PlanCanvas.Children.Remove(child);

        planIcons.Clear();
    }

    private void AddPlanIcon(string iconType, double x, double y, int? dbId)
    {
        if (!iconBitmaps.ContainsKey(iconType))
            return;

        var image = new Image();
        image.Source = iconBitmaps[iconType];
        image.Width = 36;
        image.Height = 36;
        image.Tag = iconType;
        image.PointerPressed += IconPointerPressed;
        image.PointerMoved += IconPointerMoved;
        image.PointerReleased += IconPointerReleased;

        Canvas.SetLeft(image, x);
        Canvas.SetTop(image, y);
        PlanCanvas.Children.Add(image);

        var item = new PlanIconItem();
        item.DbId = dbId;
        item.IconType = iconType;
        item.X = x;
        item.Y = y;
        item.ImageControl = image;
        planIcons.Add(item);
    }

    private void ToolbarPointerPressed(object? sender, PointerPressedEventArgs e)
    {
        if (sender is not Border border)
            return;

        dragIconType = border.Tag?.ToString();
        HighlightToolbar(border);
        e.Pointer.Capture(border);
    }

    private void HighlightToolbar(Border selectedBorder)
    {
        ToolEquipment.Classes.Remove("selected");
        ToolExit.Classes.Remove("selected");
        ToolFireExtinguisher.Classes.Remove("selected");
        ToolFirstAid.Classes.Remove("selected");
        selectedBorder.Classes.Add("selected");
    }

    private void PlanCanvasPointerMoved(object? sender, PointerEventArgs e)
    {
        if (movingItem != null)
        {
            var pos = e.GetCurrentPoint(PlanCanvas).Position;
            var dx = pos.X - moveStart.X;
            var dy = pos.Y - moveStart.Y;
            Canvas.SetLeft(movingItem.ImageControl, iconStartX + dx);
            Canvas.SetTop(movingItem.ImageControl, iconStartY + dy);
            return;
        }

        if (dragIconType != null && e.GetCurrentPoint(this).Properties.IsLeftButtonPressed)
        {
            // перетаскивание с панели инструментов
        }
    }

    private void GlobalPointerReleased(object? sender, PointerReleasedEventArgs e)
    {
        if (dragIconType == null)
            return;

        var pos = e.GetCurrentPoint(PlanCanvas).Position;
        if (pos.X >= 0 && pos.Y >= 0 && pos.X <= PlanCanvas.Width && pos.Y <= PlanCanvas.Height)
            AddPlanIcon(dragIconType, pos.X, pos.Y, null);

        dragIconType = null;
        e.Pointer.Capture(null);
    }

    private void PlanCanvasPointerReleased(object? sender, PointerReleasedEventArgs e)
    {
        if (movingItem != null)
        {
            movingItem.X = Canvas.GetLeft(movingItem.ImageControl);
            movingItem.Y = Canvas.GetTop(movingItem.ImageControl);
            movingItem = null;
            e.Pointer.Capture(null);
        }
    }

    private void IconPointerPressed(object? sender, PointerPressedEventArgs e)
    {
        if (sender is not Image image)
            return;

        selectedItem = planIcons.FirstOrDefault(x => x.ImageControl == image);
        movingItem = selectedItem;
        var pos = e.GetCurrentPoint(PlanCanvas).Position;
        moveStart = pos;
        iconStartX = Canvas.GetLeft(image);
        iconStartY = Canvas.GetTop(image);
        e.Pointer.Capture(image);
        e.Handled = true;
    }

    private void IconPointerMoved(object? sender, PointerEventArgs e)
    {
        if (movingItem == null)
            return;

        var pos = e.GetCurrentPoint(PlanCanvas).Position;
        var dx = pos.X - moveStart.X;
        var dy = pos.Y - moveStart.Y;
        Canvas.SetLeft(movingItem.ImageControl, iconStartX + dx);
        Canvas.SetTop(movingItem.ImageControl, iconStartY + dy);
    }

    private void IconPointerReleased(object? sender, PointerReleasedEventArgs e)
    {
        if (movingItem != null)
        {
            movingItem.X = Canvas.GetLeft(movingItem.ImageControl);
            movingItem.Y = Canvas.GetTop(movingItem.ImageControl);
            movingItem = null;
        }

        e.Pointer.Capture(null);
    }

    private void DeleteSelectedClick(object? sender, RoutedEventArgs e)
    {
        if (selectedItem == null)
        {
            MessageTextBlock.Text = "Выберите значок на схеме.";
            return;
        }

        PlanCanvas.Children.Remove(selectedItem.ImageControl);
        planIcons.Remove(selectedItem);
        selectedItem = null;
        MessageTextBlock.Text = "Значок удален.";
    }

    private async void SaveClick(object? sender, RoutedEventArgs e)
    {
        if (SessionData.CurrentUser?.IdUserRoleNavigation.RoleName != "Директор")
        {
            MessageTextBlock.Text = "Сохранять может только директор.";
            return;
        }

        if (WorkshopComboBox.SelectedIndex < 0 || WorkshopComboBox.SelectedIndex >= workshops.Count)
            return;

        var workshop = workshops[WorkshopComboBox.SelectedIndex];
        var oldItems = await App.DbContext.WorkshopPlanItems
            .Where(x => x.IdWorkshop == workshop.IdWorkshop)
            .ToListAsync();

        App.DbContext.WorkshopPlanItems.RemoveRange(oldItems);

        foreach (var icon in planIcons)
        {
            var item = new WorkshopPlanItem();
            item.IdWorkshop = workshop.IdWorkshop;
            item.IconType = icon.IconType;
            item.PosX = (decimal)icon.X;
            item.PosY = (decimal)icon.Y;
            App.DbContext.WorkshopPlanItems.Add(item);
        }

        await App.DbContext.SaveChangesAsync();

        workshop.WorkshopPlanItems = await App.DbContext.WorkshopPlanItems
            .Where(x => x.IdWorkshop == workshop.IdWorkshop)
            .ToListAsync();

        LoadWorkshopPlan(workshop);
        MessageTextBlock.Text = "План сохранен.";
    }

    private void CancelClick(object? sender, RoutedEventArgs e)
    {
        if (WorkshopComboBox.SelectedIndex < 0 || WorkshopComboBox.SelectedIndex >= workshops.Count)
            return;

        ClearPlanIcons();
        selectedItem = null;

        foreach (var item in savedBackup)
            AddPlanIcon(item.IconType, (double)item.PosX, (double)item.PosY, null);

        dragIconType = null;
        MessageTextBlock.Text = "Изменения отменены.";
    }

    private void ZoomInClick(object? sender, RoutedEventArgs e)
    {
        zoom = zoom + 0.1;
        if (zoom > 2.5)
            zoom = 2.5;
        zoomTransform.ScaleX = zoom;
        zoomTransform.ScaleY = zoom;
    }

    private void ZoomOutClick(object? sender, RoutedEventArgs e)
    {
        zoom = zoom - 0.1;
        if (zoom < 0.5)
            zoom = 0.5;
        zoomTransform.ScaleX = zoom;
        zoomTransform.ScaleY = zoom;
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new DirectorControl();
    }

    private class PlanIconItem
    {
        public int? DbId;
        public string IconType = "";
        public double X;
        public double Y;
        public Image ImageControl = null!;
    }

    private class PlanIconBackup
    {
        public string IconType = "";
        public decimal PosX;
        public decimal PosY;
    }
}
