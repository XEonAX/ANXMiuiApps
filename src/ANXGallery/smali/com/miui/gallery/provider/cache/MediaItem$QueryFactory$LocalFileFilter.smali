.class Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;
.super Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalFileFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELIMITER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mLocalFile:Ljava/lang/String;

.field private mLocalFileSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1022
    const-string v0, "\'\\s*,\\s*\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->DELIMITER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V
    .locals 7
    .param p1, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p2, "argument"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x27

    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 1027
    const/4 v2, -0x1

    invoke-direct {p0, v2, p1, p2}, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;-><init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    .line 1028
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne p1, v2, :cond_2

    .line 1029
    :cond_0
    iput-object p2, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mLocalFile:Ljava/lang/String;

    .line 1066
    :cond_1
    :goto_0
    return-void

    .line 1030
    :cond_2
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne p1, v2, :cond_1

    .line 1031
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1033
    .local v0, "length":I
    if-lez v0, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_4

    .line 1034
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1035
    add-int/lit8 v0, v0, -0x1

    .line 1039
    :goto_1
    if-lez v0, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1040
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1041
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1037
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "argument must start with \'(\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1043
    :cond_5
    if-lez v0, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_6

    .line 1044
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1045
    add-int/lit8 v0, v0, -0x1

    .line 1047
    :cond_6
    if-lez v0, :cond_7

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_7

    .line 1048
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1049
    add-int/lit8 v0, v0, -0x1

    .line 1053
    :goto_2
    if-lez v0, :cond_8

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_8

    .line 1054
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1055
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1051
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "argument must end with \')\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1057
    :cond_8
    if-lez v0, :cond_9

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_9

    .line 1058
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1059
    add-int/lit8 v0, v0, -0x1

    .line 1061
    :cond_9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mLocalFileSet:Ljava/util/Set;

    .line 1062
    if-lez v0, :cond_1

    .line 1063
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mLocalFileSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->DELIMITER_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic filter(Lcom/miui/gallery/provider/cache/CacheItem;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 1021
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->filter(Lcom/miui/gallery/provider/cache/MediaItem;)Lcom/miui/gallery/provider/cache/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lcom/miui/gallery/provider/cache/MediaItem;)Lcom/miui/gallery/provider/cache/MediaItem;
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1300(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mLocalFile:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    .end local p1    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :cond_0
    :goto_0
    return-object p1

    .line 1072
    .restart local p1    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_NULL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1300(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1300(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mLocalFile:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mLocalFileSet:Ljava/util/Set;

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1300(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;->mLocalFileSet:Ljava/util/Set;

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1300(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    :cond_5
    const/4 p1, 0x0

    goto :goto_0
.end method
