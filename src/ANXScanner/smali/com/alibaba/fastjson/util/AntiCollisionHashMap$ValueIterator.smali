.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;
.super Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/util/AntiCollisionHashMap",
        "<TK;TV;>.HashIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 0

    .prologue
    .line 764
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
    .param p2, "x1"    # Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;

    .prologue
    .line 764
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;->nextEntry()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
