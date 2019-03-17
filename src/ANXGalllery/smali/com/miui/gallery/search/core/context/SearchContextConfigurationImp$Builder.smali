.class public Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;
.super Ljava/lang/Object;
.source "SearchContextConfigurationImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private iconLoaderExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

.field private iconLoaderExecutorSize:I

.field private queryTaskExecutor:Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;

.field private queryTaskExecutorSize:I

.field private sources:Lcom/miui/gallery/search/core/source/Sources;

.field private suggestionViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->queryTaskExecutorSize:I

    .line 66
    iput v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->iconLoaderExecutorSize:I

    .line 69
    iput-object p1, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->context:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->queryTaskExecutor:Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Lcom/miui/gallery/search/core/context/TaskExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->iconLoaderExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->suggestionViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Lcom/miui/gallery/search/core/source/Sources;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->sources:Lcom/miui/gallery/search/core/source/Sources;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->queryTaskExecutor:Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;

    iget v1, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->queryTaskExecutorSize:I

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->queryTaskExecutor:Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->suggestionViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;

    iget-object v1, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->suggestionViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->sources:Lcom/miui/gallery/search/core/source/Sources;

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Lcom/miui/gallery/search/core/source/SearchableSources;

    iget-object v1, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/source/SearchableSources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->sources:Lcom/miui/gallery/search/core/source/Sources;

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->iconLoaderExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    if-nez v0, :cond_3

    .line 108
    new-instance v0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;

    iget v1, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->iconLoaderExecutorSize:I

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->iconLoaderExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    .line 110
    :cond_3
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;->initEmptyFieldsWithDefaultValues()V

    .line 74
    new-instance v0, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;-><init>(Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$Builder;Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp$1;)V

    return-object v0
.end method
