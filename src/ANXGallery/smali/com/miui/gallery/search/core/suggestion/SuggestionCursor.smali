.class public interface abstract Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
.super Ljava/lang/Object;
.source "SuggestionCursor.java"

# interfaces
.implements Landroid/database/Cursor;
.implements Lcom/miui/gallery/search/core/QuietlyCloseable;
.implements Lcom/miui/gallery/search/core/suggestion/Suggestion;


# virtual methods
.method public abstract getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;
.end method

.method public abstract getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;
.end method

.method public abstract setExtras(Landroid/os/Bundle;)V
.end method
