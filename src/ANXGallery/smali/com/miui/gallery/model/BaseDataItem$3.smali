.class Lcom/miui/gallery/model/BaseDataItem$3;
.super Ljava/lang/Object;
.source "BaseDataItem.java"

# interfaces
.implements Lcom/miui/gallery/model/BaseDataItem$Func;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/model/BaseDataItem;->getPathDisplayBetter()Ljava/lang/String;
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
        "Ljava/lang/String;",
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
    .line 424
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem$3;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doFunc()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem$3;->doFunc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doFunc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$3;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-static {v0}, Lcom/miui/gallery/model/BaseDataItem;->access$200(Lcom/miui/gallery/model/BaseDataItem;)Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
