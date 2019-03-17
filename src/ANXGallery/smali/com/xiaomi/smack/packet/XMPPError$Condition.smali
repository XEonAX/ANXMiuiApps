.class public Lcom/xiaomi/smack/packet/XMPPError$Condition;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smack/packet/XMPPError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# static fields
.field public static final bad_request:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final conflict:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final feature_not_implemented:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final forbidden:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final gone:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final interna_server_error:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final item_not_found:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final jid_malformed:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final no_acceptable:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final not_allowed:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final not_authorized:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final payment_required:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final recipient_unavailable:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final redirect:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final registration_required:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final remote_server_error:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final remote_server_not_found:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final remote_server_timeout:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final request_timeout:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final resource_constraint:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final service_unavailable:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final subscription_required:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final undefined_condition:Lcom/xiaomi/smack/packet/XMPPError$Condition;

.field public static final unexpected_request:Lcom/xiaomi/smack/packet/XMPPError$Condition;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "internal-server-error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->interna_server_error:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 461
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "forbidden"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->forbidden:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 462
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "bad-request"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->bad_request:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 463
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "conflict"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->conflict:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 464
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "feature-not-implemented"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->feature_not_implemented:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 466
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "gone"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->gone:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 467
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "item-not-found"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->item_not_found:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 468
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "jid-malformed"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->jid_malformed:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 469
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "not-acceptable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->no_acceptable:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 470
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "not-allowed"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->not_allowed:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 471
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "not-authorized"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->not_authorized:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 472
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "payment-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->payment_required:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 473
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "recipient-unavailable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->recipient_unavailable:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 474
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "redirect"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->redirect:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 475
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "registration-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->registration_required:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 476
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "remote-server-error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->remote_server_error:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 477
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "remote-server-not-found"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->remote_server_not_found:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 479
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "remote-server-timeout"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->remote_server_timeout:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 480
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "resource-constraint"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->resource_constraint:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 481
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "service-unavailable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->service_unavailable:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 482
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string/jumbo v1, "subscription-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->subscription_required:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 483
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string/jumbo v1, "undefined-condition"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->undefined_condition:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 484
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string/jumbo v1, "unexpected-request"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->unexpected_request:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .line 485
    new-instance v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;

    const-string v1, "request-timeout"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->request_timeout:Lcom/xiaomi/smack/packet/XMPPError$Condition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->value:Ljava/lang/String;

    .line 491
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/smack/packet/XMPPError$Condition;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/xiaomi/smack/packet/XMPPError$Condition;->value:Ljava/lang/String;

    return-object v0
.end method
