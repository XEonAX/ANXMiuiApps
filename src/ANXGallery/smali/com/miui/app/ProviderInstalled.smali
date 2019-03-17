.class public final Lcom/miui/app/ProviderInstalled;
.super Lcom/miui/utils/LazyConst;
.source "ProviderInstalled.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/utils/LazyConst",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthority:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/utils/LazyConst;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/app/ProviderInstalled;->mAuthority:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public onInit(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/app/ProviderInstalled;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onInit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/miui/app/ProviderInstalled;->onInit(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
