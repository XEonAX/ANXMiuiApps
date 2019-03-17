.class final Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor$1;
.super Ljava/lang/Object;
.source "CursorBackedSuggestionCursor.java"

# interfaces
.implements Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraColumnNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
