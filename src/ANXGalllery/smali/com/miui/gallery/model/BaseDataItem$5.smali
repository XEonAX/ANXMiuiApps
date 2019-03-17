.class Lcom/miui/gallery/model/BaseDataItem$5;
.super Ljava/lang/Object;
.source "BaseDataItem.java"

# interfaces
.implements Lcom/miui/gallery/model/BaseDataItem$Func;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/model/BaseDataItem;->setPathDisplayBetter(ILjava/lang/String;)V
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

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/model/BaseDataItem;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem$5;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    iput p2, p0, Lcom/miui/gallery/model/BaseDataItem$5;->val$type:I

    iput-object p3, p0, Lcom/miui/gallery/model/BaseDataItem$5;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doFunc()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem$5;->doFunc()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doFunc()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$5;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-static {v0}, Lcom/miui/gallery/model/BaseDataItem;->access$200(Lcom/miui/gallery/model/BaseDataItem;)Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/model/BaseDataItem$5;->val$type:I

    iget-object v2, p0, Lcom/miui/gallery/model/BaseDataItem$5;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;->setPath(ILjava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    return-object v0
.end method
