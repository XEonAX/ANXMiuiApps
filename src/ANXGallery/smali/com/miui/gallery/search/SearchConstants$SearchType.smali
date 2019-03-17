.class public final enum Lcom/miui/gallery/search/SearchConstants$SearchType;
.super Ljava/lang/Enum;
.source "SearchConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/SearchConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/search/SearchConstants$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/search/SearchConstants$SearchType;

.field public static final enum SEARCH_TYPE_FEEDBACK_LIKELY_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

.field public static final enum SEARCH_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SearchType;

.field public static final enum SEARCH_TYPE_HINT:Lcom/miui/gallery/search/SearchConstants$SearchType;

.field public static final enum SEARCH_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SearchType;

.field public static final enum SEARCH_TYPE_NAVIGATION:Lcom/miui/gallery/search/SearchConstants$SearchType;

.field public static final enum SEARCH_TYPE_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

.field public static final enum SEARCH_TYPE_RESULT_LIST:Lcom/miui/gallery/search/SearchConstants$SearchType;

.field public static final enum SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

.field public static final enum SEARCH_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SearchType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    const-string v1, "SEARCH_TYPE_HINT"

    const-string v2, "hint"

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_HINT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 13
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    const-string v1, "SEARCH_TYPE_HISTORY"

    const-string v2, "history"

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/gallery/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 14
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    const-string v1, "SEARCH_TYPE_NAVIGATION"

    const-string v2, "navigation"

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/gallery/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_NAVIGATION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 15
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    const-string v1, "SEARCH_TYPE_SUGGESTION"

    const-string/jumbo v2, "suggestion"

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/gallery/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 16
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    const-string v1, "SEARCH_TYPE_SEARCH"

    const-string v2, "search"

    invoke-direct {v0, v1, v8, v2}, Lcom/miui/gallery/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 17
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    const-string v1, "SEARCH_TYPE_RESULT"

    const/4 v2, 0x5

    const-string v3, "result"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 18
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    const-string v1, "SEARCH_TYPE_RESULT_LIST"

    const/4 v2, 0x6

    const-string v3, "list"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_RESULT_LIST:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 19
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    const-string v1, "SEARCH_TYPE_FILTER"

    const/4 v2, 0x7

    const-string v3, "filter"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 20
    new-instance v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    const-string v1, "SEARCH_TYPE_FEEDBACK_LIKELY_RESULT"

    const/16 v2, 0x8

    const-string v3, "likelyResult"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FEEDBACK_LIKELY_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/miui/gallery/search/SearchConstants$SearchType;

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_HINT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_NAVIGATION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_RESULT_LIST:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FEEDBACK_LIKELY_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->$VALUES:[Lcom/miui/gallery/search/SearchConstants$SearchType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/miui/gallery/search/SearchConstants$SearchType;->name:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->$VALUES:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-virtual {v0}, [Lcom/miui/gallery/search/SearchConstants$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method
