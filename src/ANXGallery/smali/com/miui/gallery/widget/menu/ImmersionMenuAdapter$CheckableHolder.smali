.class Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;
.super Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;
.source "ImmersionMenuAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckableHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field data:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

.field final synthetic this$0:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->this$0:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;-><init>(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->this$0:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    invoke-static {v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->access$000(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;)Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->data:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->this$0:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    invoke-static {v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->access$000(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;)Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->data:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    invoke-interface {v0, v1, p2}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;->onItemCheckChanged(Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Z)V

    .line 175
    :cond_0
    return-void
.end method
