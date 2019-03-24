.class public Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_App_ResourcesManager_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory$Holder;
    }
.end annotation


# instance fields
.field private kl:Lcom/miui/internal/variable/Android_App_ResourcesManager_class;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    .line 44
    const-string v0, "Android_App_ResourcesManager_class"

    .line 45
    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;

    iput-object v0, p0, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;->kl:Lcom/miui/internal/variable/Android_App_ResourcesManager_class;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_App_ResourcesManager_class$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;
    .locals 1

    .line 49
    sget-object v0, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory$Holder;->km:Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_App_ResourcesManager_class;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;->kl:Lcom/miui/internal/variable/Android_App_ResourcesManager_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;->get()Lcom/miui/internal/variable/Android_App_ResourcesManager_class;

    move-result-object v0

    return-object v0
.end method
