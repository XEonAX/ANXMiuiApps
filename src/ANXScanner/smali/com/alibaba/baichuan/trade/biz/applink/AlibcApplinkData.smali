.class public Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_DETAIL:I = 0x1

.field public static final TYPE_SHOP:I = 0x2

.field public static final TYPE_URL:I = 0x3


# instance fields
.field public param:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;->type:I

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;->param:Ljava/lang/String;

    return-void
.end method
