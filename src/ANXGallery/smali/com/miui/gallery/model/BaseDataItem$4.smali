.class Lcom/miui/gallery/model/BaseDataItem$4;
.super Ljava/lang/Object;
.source "BaseDataItem.java"

# interfaces
.implements Lcom/miui/gallery/model/BaseDataItem$Func;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/model/BaseDataItem;->getDisplayBetterFileSize()J
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
        "Ljava/lang/Long;",
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
    .line 433
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem$4;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFunc()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$4;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-static {v0}, Lcom/miui/gallery/model/BaseDataItem;->access$300(Lcom/miui/gallery/model/BaseDataItem;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doFunc()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem$4;->doFunc()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
