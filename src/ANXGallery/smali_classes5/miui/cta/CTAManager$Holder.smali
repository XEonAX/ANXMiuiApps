.class Lmiui/cta/CTAManager$Holder;
.super Ljava/lang/Object;
.source "CTAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cta/CTAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lmiui/cta/CTAManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lmiui/cta/CTAManager;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/cta/CTAManager;-><init>(Landroid/content/Context;Lmiui/cta/CTAManager$1;)V

    sput-object v0, Lmiui/cta/CTAManager$Holder;->INSTANCE:Lmiui/cta/CTAManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
