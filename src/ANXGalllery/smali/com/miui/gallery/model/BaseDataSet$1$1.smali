.class Lcom/miui/gallery/model/BaseDataSet$1$1;
.super Ljava/lang/Object;
.source "BaseDataSet.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/model/BaseDataSet$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/ui/ProcessTask$ProcessCallback",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/model/BaseDataSet$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/model/BaseDataSet$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/model/BaseDataSet$1;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataSet$1$1;->this$1:Lcom/miui/gallery/model/BaseDataSet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doProcess([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataSet$1$1;->this$1:Lcom/miui/gallery/model/BaseDataSet$1;

    iget-object v0, v0, Lcom/miui/gallery/model/BaseDataSet$1;->this$0:Lcom/miui/gallery/model/BaseDataSet;

    iget-object v1, p0, Lcom/miui/gallery/model/BaseDataSet$1$1;->this$1:Lcom/miui/gallery/model/BaseDataSet$1;

    iget-object v1, v1, Lcom/miui/gallery/model/BaseDataSet$1;->val$item:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/BaseDataSet;->doDelete(Lcom/miui/gallery/model/BaseDataItem;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doProcess([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/model/BaseDataSet$1$1;->doProcess([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
