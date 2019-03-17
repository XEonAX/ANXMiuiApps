.class Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$1;
.super Ljava/lang/Object;
.source "AutoBackupChooserAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$1;->this$0:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    iput p2, p0, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$1;->this$0:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->access$000(Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;)Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$1;->val$position:I

    invoke-interface {v0, v1, p2}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;->onAutoBackupStateChanged(IZ)V

    .line 72
    return-void
.end method
