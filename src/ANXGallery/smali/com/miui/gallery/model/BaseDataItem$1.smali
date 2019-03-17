.class Lcom/miui/gallery/model/BaseDataItem$1;
.super Ljava/lang/Object;
.source "BaseDataItem.java"

# interfaces
.implements Lcom/miui/gallery/model/BaseDataItem$Func;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/model/BaseDataItem;->getSupportOperations()I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/model/BaseDataItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem$1;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFunc()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$1;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-static {v0}, Lcom/miui/gallery/model/BaseDataItem;->access$100(Lcom/miui/gallery/model/BaseDataItem;)I

    move-result v0

    if-gez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$1;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    iget-object v1, p0, Lcom/miui/gallery/model/BaseDataItem$1;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->initSupportOperations()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->access$102(Lcom/miui/gallery/model/BaseDataItem;I)I

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$1;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-static {v0}, Lcom/miui/gallery/model/BaseDataItem;->access$100(Lcom/miui/gallery/model/BaseDataItem;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doFunc()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem$1;->doFunc()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
