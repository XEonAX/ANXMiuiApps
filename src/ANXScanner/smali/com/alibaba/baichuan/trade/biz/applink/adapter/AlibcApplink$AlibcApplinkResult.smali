.class public Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlibcApplinkResult"
.end annotation


# static fields
.field public static final APPLINK_INIT_AD:I = 0x2

.field public static final APPLINK_INIT_FAIL:I = 0x1

.field public static final APPLINK_INIT_SUCCESS:I


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public result:I


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->a:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->result:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;I)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->a:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->result:I

    iput p2, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->result:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->a:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->result:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->result:I

    iput p2, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->errorCode:I

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->errorMessage:Ljava/lang/String;

    return-void
.end method
