.class public abstract Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
.super Lcom/miui/gallery/provider/cache/Filter;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CompareFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/provider/cache/CacheItem;",
        ">",
        "Lcom/miui/gallery/provider/cache/Filter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mArgument:Ljava/lang/String;

.field protected mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field protected mIndex:I


# direct methods
.method public constructor <init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # I
    .param p2, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p3, "argument"    # Ljava/lang/String;

    .prologue
    .line 222
    .local p0, "this":Lcom/miui/gallery/provider/cache/Filter$CompareFilter;, "Lcom/miui/gallery/provider/cache/Filter$CompareFilter<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/Filter;-><init>()V

    .line 223
    iput p1, p0, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;->mIndex:I

    .line 224
    iput-object p2, p0, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    .line 225
    iput-object p3, p0, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;->mArgument:Ljava/lang/String;

    .line 226
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    .local p0, "this":Lcom/miui/gallery/provider/cache/Filter$CompareFilter;, "Lcom/miui/gallery/provider/cache/Filter$CompareFilter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompareFilter{mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mArgument=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;->mArgument:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
