.class public Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;
.super Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;
.source "TemplateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter",
        "<",
        "Lcom/miui/gallery/movie/entity/TemplateResource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method
