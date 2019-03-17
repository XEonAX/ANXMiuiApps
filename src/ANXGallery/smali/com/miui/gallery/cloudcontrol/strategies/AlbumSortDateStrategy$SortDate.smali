.class public final enum Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
.super Ljava/lang/Enum;
.source "AlbumSortDateStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortDate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

.field public static final enum DATE_CREATED:Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

.field public static final enum DATE_MODIFIED:Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    const-string v1, "DATE_MODIFIED"

    const-string v2, "dateModified"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->DATE_MODIFIED:Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    .line 25
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    const-string v1, "DATE_CREATED"

    const-string v2, "dateCreated"

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->DATE_CREATED:Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    sget-object v1, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->DATE_MODIFIED:Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->DATE_CREATED:Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->$VALUES:[Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->value:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->values()[Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 39
    .local v0, "sortDate":Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
    iget-object v4, v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    .end local v0    # "sortDate":Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
    :goto_1
    return-object v0

    .line 38
    .restart local v0    # "sortDate":Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "sortDate":Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
    :cond_1
    sget-object v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->DATE_CREATED:Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->$VALUES:[Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    invoke-virtual {v0}, [Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    return-object v0
.end method
