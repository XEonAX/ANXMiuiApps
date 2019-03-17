.class Lcom/miui/gallery/adapter/PhotoPageAdapter$1;
.super Ljava/lang/Object;
.source "PhotoPageAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/PhotoPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/PhotoPageAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemKey(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->access$100(Lcom/miui/gallery/adapter/PhotoPageAdapter;)Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->access$100(Lcom/miui/gallery/adapter/PhotoPageAdapter;)Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/model/BaseDataSet;->getItemKey(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemPos(JI)I
    .locals 3
    .param p1, "key"    # J
    .param p3, "possiblePos"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->access$100(Lcom/miui/gallery/adapter/PhotoPageAdapter;)Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->access$100(Lcom/miui/gallery/adapter/PhotoPageAdapter;)Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {v1}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public notifyCheckState()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->notifyDataSetChanged()V

    .line 461
    return-void
.end method
