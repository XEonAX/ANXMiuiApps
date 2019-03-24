.class Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;
.super Ljava/lang/Object;
.source "ThemeResources.java"

# interfaces
.implements Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThemeConfigHelper"
.end annotation


# instance fields
.field private mFilter:Lmiui/content/res/ThemeResources$FilterInfo;

.field final synthetic this$0:Lmiui/content/res/ThemeResources;


# direct methods
.method private constructor <init>(Lmiui/content/res/ThemeResources;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->this$0:Lmiui/content/res/ThemeResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/ThemeResources;Lmiui/content/res/ThemeResources$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/content/res/ThemeResources;
    .param p2, "x1"    # Lmiui/content/res/ThemeResources$1;

    .line 420
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;-><init>(Lmiui/content/res/ThemeResources;)V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;Lmiui/content/res/ThemeResources$ConfigType;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "type"    # Lmiui/content/res/ThemeResources$ConfigType;

    .line 430
    if-eqz p1, :cond_1

    .line 431
    sget-object v0, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    if-ne p2, v0, :cond_0

    .line 432
    iget-object v0, p0, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->mFilter:Lmiui/content/res/ThemeResources$FilterInfo;

    iget-object v1, p0, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->this$0:Lmiui/content/res/ThemeResources;

    iget-object v1, v1, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    iget-object v2, p0, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->this$0:Lmiui/content/res/ThemeResources;

    iget-object v2, v2, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lmiui/content/res/ThemeValues;->parseThemeValues(Landroid/content/res/MiuiResources;Ljava/io/InputStream;Ljava/lang/String;)Lmiui/content/res/ThemeValues;

    move-result-object v1

    iput-object v1, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Lmiui/content/res/ThemeValues;

    goto :goto_0

    .line 433
    :cond_0
    sget-object v0, Lmiui/content/res/ThemeResources$ConfigType;->THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

    if-ne p2, v0, :cond_1

    .line 434
    iget-object v0, p0, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->mFilter:Lmiui/content/res/ThemeResources$FilterInfo;

    iget-object v1, p0, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->this$0:Lmiui/content/res/ThemeResources;

    iget-object v1, v1, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    iget-object v2, p0, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->this$0:Lmiui/content/res/ThemeResources;

    iget-object v2, v2, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/miui/internal/content/res/ThemeFallback;->parseThemeFallback(Landroid/content/res/MiuiResources;Ljava/io/InputStream;Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeFallback;

    move-result-object v1

    iput-object v1, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mFallback:Lcom/miui/internal/content/res/ThemeFallback;

    .line 437
    :cond_1
    :goto_0
    return-void
.end method

.method public newTarget(Lmiui/content/res/ThemeResources$FilterInfo;)V
    .locals 2
    .param p1, "filter"    # Lmiui/content/res/ThemeResources$FilterInfo;

    .line 424
    iput-object p1, p0, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->mFilter:Lmiui/content/res/ThemeResources$FilterInfo;

    .line 425
    iget-object v0, p0, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->this$0:Lmiui/content/res/ThemeResources;

    iget-object v0, v0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    iget-object v1, p1, Lmiui/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lmiui/content/res/ThemeZipFile;->loadThemeConfig(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;)V

    .line 426
    return-void
.end method
