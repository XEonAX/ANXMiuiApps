.class public Lcom/miui/gallery/search/core/display/DefaultSuggestionView$Factory;
.super Lcom/miui/gallery/search/core/display/SingleViewTypeFactory;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/display/DefaultSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "default"

    const v1, 0x7f040066

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/gallery/search/core/display/SingleViewTypeFactory;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    .line 29
    return-void
.end method
