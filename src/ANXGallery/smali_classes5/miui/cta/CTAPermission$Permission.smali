.class final enum Lmiui/cta/CTAPermission$Permission;
.super Ljava/lang/Enum;
.source "CTAPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cta/CTAPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/cta/CTAPermission$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_ACCESS_LOCATION:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_ACCESS_NETWORK:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_CALL_PHONE:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_CAMERA:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_READ_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_READ_CONTACTS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_READ_SMS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_RECEIVE_SMS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_SEND_SMS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_WRITE_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_WRITE_CONTACTS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_WRITE_SMS:Lmiui/cta/CTAPermission$Permission;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 23
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_ACCESS_NETWORK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_ACCESS_NETWORK:Lmiui/cta/CTAPermission$Permission;

    .line 24
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_READ_SMS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_SMS:Lmiui/cta/CTAPermission$Permission;

    .line 25
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_WRITE_SMS"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_SMS:Lmiui/cta/CTAPermission$Permission;

    .line 26
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_RECEIVE_SMS"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_RECEIVE_SMS:Lmiui/cta/CTAPermission$Permission;

    .line 27
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_SEND_SMS"

    const/16 v8, 0x10

    invoke-direct {v0, v1, v5, v8}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_SEND_SMS:Lmiui/cta/CTAPermission$Permission;

    .line 28
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_CALL_PHONE"

    const/4 v8, 0x5

    const/16 v9, 0x20

    invoke-direct {v0, v1, v8, v9}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_CALL_PHONE:Lmiui/cta/CTAPermission$Permission;

    .line 29
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_READ_CONTACTS"

    const/4 v9, 0x6

    const/16 v10, 0x40

    invoke-direct {v0, v1, v9, v10}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_CONTACTS:Lmiui/cta/CTAPermission$Permission;

    .line 30
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_WRITE_CONTACTS"

    const/4 v10, 0x7

    const/16 v11, 0x80

    invoke-direct {v0, v1, v10, v11}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_CONTACTS:Lmiui/cta/CTAPermission$Permission;

    .line 31
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_READ_CALL_LOG"

    const/16 v11, 0x100

    invoke-direct {v0, v1, v7, v11}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

    .line 32
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_WRITE_CALL_LOG"

    const/16 v11, 0x9

    const/16 v12, 0x200

    invoke-direct {v0, v1, v11, v12}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

    .line 33
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_CAMERA"

    const/16 v12, 0xa

    const/16 v13, 0x400

    invoke-direct {v0, v1, v12, v13}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_CAMERA:Lmiui/cta/CTAPermission$Permission;

    .line 34
    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v1, "PERMISSION_ACCESS_LOCATION"

    const/16 v13, 0xb

    const/16 v14, 0x800

    invoke-direct {v0, v1, v13, v14}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_ACCESS_LOCATION:Lmiui/cta/CTAPermission$Permission;

    .line 22
    const/16 v0, 0xc

    new-array v0, v0, [Lmiui/cta/CTAPermission$Permission;

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_ACCESS_NETWORK:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_SMS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_SMS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_RECEIVE_SMS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_SEND_SMS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_CALL_PHONE:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v8

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_CONTACTS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v9

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_CONTACTS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v10

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v11

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_CAMERA:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v12

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_ACCESS_LOCATION:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v13

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->$VALUES:[Lmiui/cta/CTAPermission$Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lmiui/cta/CTAPermission$Permission;->value:I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/cta/CTAPermission$Permission;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lmiui/cta/CTAPermission$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/cta/CTAPermission$Permission;

    return-object v0
.end method

.method public static values()[Lmiui/cta/CTAPermission$Permission;
    .locals 1

    .line 22
    sget-object v0, Lmiui/cta/CTAPermission$Permission;->$VALUES:[Lmiui/cta/CTAPermission$Permission;

    invoke-virtual {v0}, [Lmiui/cta/CTAPermission$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/cta/CTAPermission$Permission;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/cta/CTAPermission$Permission;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
