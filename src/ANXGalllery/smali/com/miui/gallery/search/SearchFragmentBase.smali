.class public abstract Lcom/miui/gallery/search/SearchFragmentBase;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "SearchFragmentBase.java"


# instance fields
.field private mCallback:Lcom/miui/gallery/search/SearchFragmentCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/miui/gallery/search/SearchFragmentCallback;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragmentBase;->mCallback:Lcom/miui/gallery/search/SearchFragmentCallback;

    return-object v0
.end method

.method public setQueryText(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/String;
    .param p2, "forceSearch"    # Z
    .param p3, "enableShortcut"    # Z

    .prologue
    .line 9
    return-void
.end method

.method public setSearchFragmentCallback(Lcom/miui/gallery/search/SearchFragmentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/miui/gallery/search/SearchFragmentCallback;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/miui/gallery/search/SearchFragmentBase;->mCallback:Lcom/miui/gallery/search/SearchFragmentCallback;

    .line 13
    return-void
.end method
