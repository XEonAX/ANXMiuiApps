.class Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;
.super Ljava/lang/Object;
.source "DialogStyleMenu.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPickerChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setThumbColor(I)V

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;->onColorChange(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 152
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setThumbColor(I)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;->onColorChange(I)V

    .line 160
    :cond_0
    return-void
.end method
