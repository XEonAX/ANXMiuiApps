.class public Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory$Holder;
    }
.end annotation


# instance fields
.field private ko:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    .line 31
    const-string v0, "Android_Content_Res_ResourcesImpl_class"

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    iput-object v0, p0, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->ko:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;
    .locals 1

    .line 36
    sget-object v0, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory$Holder;->kp:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->ko:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    move-result-object v0

    return-object v0
.end method
