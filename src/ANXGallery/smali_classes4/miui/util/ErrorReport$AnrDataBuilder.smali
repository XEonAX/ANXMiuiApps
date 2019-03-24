.class Lmiui/util/ErrorReport$AnrDataBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/ErrorReport$DataBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnrDataBuilder"
.end annotation


# instance fields
.field private Jj:Landroid/content/Context;

.field private Jk:Ljava/lang/String;

.field private Jl:Landroid/app/ActivityManager$ProcessErrorStateInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->Jj:Landroid/content/Context;

    .line 395
    iput-object p2, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->Jk:Ljava/lang/String;

    .line 396
    iput-object p3, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->Jl:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 397
    return-void
.end method


# virtual methods
.method public dt()Lorg/json/JSONObject;
    .locals 3

    .line 401
    iget-object v0, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->Jj:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->Jk:Ljava/lang/String;

    iget-object v2, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->Jl:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-static {v0, v1, v2}, Lmiui/util/ErrorReport;->getAnrData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
