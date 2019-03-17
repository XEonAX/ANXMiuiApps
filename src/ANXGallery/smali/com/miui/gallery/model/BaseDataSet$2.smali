.class Lcom/miui/gallery/model/BaseDataSet$2;
.super Ljava/lang/Object;
.source "BaseDataSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/model/BaseDataSet;->delete(Landroid/app/Activity;ILcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/model/BaseDataSet;


# direct methods
.method constructor <init>(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataSet$2;->this$0:Lcom/miui/gallery/model/BaseDataSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 218
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 219
    return-void
.end method
