.class public Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;
.super Ljava/lang/Object;
.source "SearchContextConfigurationImp.java"

# interfaces
.implements Lcom/miui/gallery/search/core/context/SearchContextConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;
    }
.end annotation


# instance fields
.field mBuilder:Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;->mBuilder:Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;
    .param p2, "x1"    # Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;-><init>(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)V

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->build()Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;->mBuilder:Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    invoke-static {v0}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->access$400(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getIconLoaderExecutor()Lcom/miui/gallery/search/core/context/TaskExecutor;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;->mBuilder:Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    invoke-static {v0}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->access$100(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Lcom/miui/gallery/search/core/context/TaskExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTaskExecutor()Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;->mBuilder:Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    invoke-static {v0}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->access$000(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getSources()Lcom/miui/gallery/search/core/source/Sources;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;->mBuilder:Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    invoke-static {v0}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->access$300(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Lcom/miui/gallery/search/core/source/Sources;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionViewFactory()Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;->mBuilder:Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    invoke-static {v0}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->access$200(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    move-result-object v0

    return-object v0
.end method
