.class public Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private kr:Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory$1;

    invoke-direct {v0}, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory$1;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    .line 36
    const-string v0, "Android_Content_SyncStatusInfo_class"

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;

    iput-object v0, p0, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;->kr:Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;
    .locals 1

    .line 41
    sget-object v0, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;->kr:Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;

    move-result-object v0

    return-object v0
.end method
