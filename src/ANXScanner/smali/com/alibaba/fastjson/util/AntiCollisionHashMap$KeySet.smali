.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 0

    .prologue
    .line 816
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
    .param p2, "x1"    # Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;

    .prologue
    .line 816
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 834
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->clear()V

    .line 835
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 826
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->newKeyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 830
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 822
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method
