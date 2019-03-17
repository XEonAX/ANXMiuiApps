.class public final enum Lcom/miui/gallery/search/SearchConstants$SectionType;
.super Ljava/lang/Enum;
.source "SearchConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/SearchConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/search/SearchConstants$SectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_ALBUM:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_APP_SCREENSHOT:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_DEFAULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_FEATURE:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_GUIDE:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_IMAGE_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_LOCATION:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_LOCATION_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_NO_RESULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_OCR:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_OTHER:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_PEOPLE:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_RECOMMEND:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_TAG:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_TAG_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

.field public static final enum SECTION_TYPE_WARNING:Lcom/miui/gallery/search/SearchConstants$SectionType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_DEFAULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 35
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_RECOMMEND"

    const-string v2, "recommend"

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_RECOMMEND:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 36
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_PEOPLE"

    const-string v2, "people"

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_PEOPLE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 37
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_ALBUM"

    const-string v2, "album"

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_ALBUM:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 38
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_LOCATION"

    const-string v2, "location"

    invoke-direct {v0, v1, v8, v2}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_LOCATION:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 39
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_TAG"

    const/4 v2, 0x5

    const-string/jumbo v3, "tag"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_TAG:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 40
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_FEATURE"

    const/4 v2, 0x6

    const-string v3, "feature"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_FEATURE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 41
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_LOCATION_LIST"

    const/4 v2, 0x7

    const-string v3, "locationList"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_LOCATION_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 42
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_TAG_LIST"

    const/16 v2, 0x8

    const-string/jumbo v3, "tagList"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_TAG_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 43
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_IMAGE_LIST"

    const/16 v2, 0x9

    const-string v3, "imageList"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_IMAGE_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 44
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_HISTORY"

    const/16 v2, 0xa

    const-string v3, "history"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 45
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_WARNING"

    const/16 v2, 0xb

    const-string/jumbo v3, "warning"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_WARNING:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 46
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_FILTER"

    const/16 v2, 0xc

    const-string v3, "facet"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 47
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_OCR"

    const/16 v2, 0xd

    const-string v3, "ocr"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_OCR:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 48
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_OTHER"

    const/16 v2, 0xe

    const-string v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_OTHER:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 49
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_NO_RESULT"

    const/16 v2, 0xf

    const-string v3, "noResult"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_NO_RESULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 50
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_GUIDE"

    const/16 v2, 0x10

    const-string v3, "guide"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_GUIDE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 51
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_SUGGESTION"

    const/16 v2, 0x11

    const-string/jumbo v3, "suggestion"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 52
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    const-string v1, "SECTION_TYPE_APP_SCREENSHOT"

    const/16 v2, 0x12

    const-string v3, "appScreenshot"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_APP_SCREENSHOT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 33
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/miui/gallery/search/SearchConstants$SectionType;

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_DEFAULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_RECOMMEND:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_PEOPLE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_ALBUM:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_LOCATION:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_TAG:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_FEATURE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_LOCATION_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_TAG_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_IMAGE_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_WARNING:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_OCR:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_OTHER:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_NO_RESULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_GUIDE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_APP_SCREENSHOT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->$VALUES:[Lcom/miui/gallery/search/SearchConstants$SectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lcom/miui/gallery/search/SearchConstants$SectionType;->name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/miui/gallery/search/SearchConstants$SectionType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {}, Lcom/miui/gallery/search/SearchConstants$SectionType;->values()[Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 66
    .local v0, "sectionType":Lcom/miui/gallery/search/SearchConstants$SectionType;
    iget-object v4, v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    .end local v0    # "sectionType":Lcom/miui/gallery/search/SearchConstants$SectionType;
    :goto_1
    return-object v0

    .line 65
    .restart local v0    # "sectionType":Lcom/miui/gallery/search/SearchConstants$SectionType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "sectionType":Lcom/miui/gallery/search/SearchConstants$SectionType;
    :cond_1
    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_DEFAULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/search/SearchConstants$SectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/SearchConstants$SectionType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/search/SearchConstants$SectionType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->$VALUES:[Lcom/miui/gallery/search/SearchConstants$SectionType;

    invoke-virtual {v0}, [Lcom/miui/gallery/search/SearchConstants$SectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/search/SearchConstants$SectionType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConstants$SectionType;->name:Ljava/lang/String;

    return-object v0
.end method
