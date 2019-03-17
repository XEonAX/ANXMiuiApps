.class public Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;
.super Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;
.source "AudioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter",
        "<",
        "Lcom/miui/gallery/movie/entity/AudioResource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->mSelectedItemPosition:I

    .line 11
    return-void
.end method
