.class Lcom/miui/gallery/model/BaseDataItem$2;
.super Ljava/lang/Object;
.source "BaseDataItem.java"

# interfaces
.implements Lcom/miui/gallery/model/BaseDataItem$Func;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/model/BaseDataItem;->removeSupportOperation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/model/BaseDataItem$Func",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/model/BaseDataItem;

.field final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/model/BaseDataItem;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem$2;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    iput p2, p0, Lcom/miui/gallery/model/BaseDataItem$2;->val$operation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doFunc()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem$2;->doFunc()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doFunc()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$2;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-static {v0}, Lcom/miui/gallery/model/BaseDataItem;->access$100(Lcom/miui/gallery/model/BaseDataItem;)I

    move-result v0

    if-lez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$2;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    iget-object v1, p0, Lcom/miui/gallery/model/BaseDataItem$2;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-static {v1}, Lcom/miui/gallery/model/BaseDataItem;->access$100(Lcom/miui/gallery/model/BaseDataItem;)I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/model/BaseDataItem$2;->val$operation:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->access$102(Lcom/miui/gallery/model/BaseDataItem;I)I

    .line 304
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
