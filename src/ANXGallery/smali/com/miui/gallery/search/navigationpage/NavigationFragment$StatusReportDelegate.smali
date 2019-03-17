.class Lcom/miui/gallery/search/navigationpage/NavigationFragment$StatusReportDelegate;
.super Ljava/lang/Object;
.source "NavigationFragment.java"

# interfaces
.implements Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/navigationpage/NavigationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusReportDelegate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment$StatusReportDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldReportStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 260
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
