.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;
.super Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/util/AntiCollisionHashMap",
        "<TK;TV;>.HashIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 0

    .prologue
    .line 770
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
    .param p2, "x1"    # Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;

    .prologue
    .line 770
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;->nextEntry()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
