.class public final enum Lio/grpc/TlsServerCredentials$ClientAuth;
.super Ljava/lang/Enum;
.source "TlsServerCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/TlsServerCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientAuth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/TlsServerCredentials$ClientAuth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/TlsServerCredentials$ClientAuth;

.field public static final enum NONE:Lio/grpc/TlsServerCredentials$ClientAuth;

.field public static final enum OPTIONAL:Lio/grpc/TlsServerCredentials$ClientAuth;

.field public static final enum REQUIRE:Lio/grpc/TlsServerCredentials$ClientAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 404
    new-instance v0, Lio/grpc/TlsServerCredentials$ClientAuth;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/TlsServerCredentials$ClientAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/TlsServerCredentials$ClientAuth;->NONE:Lio/grpc/TlsServerCredentials$ClientAuth;

    .line 410
    new-instance v1, Lio/grpc/TlsServerCredentials$ClientAuth;

    const-string v2, "OPTIONAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/grpc/TlsServerCredentials$ClientAuth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/TlsServerCredentials$ClientAuth;->OPTIONAL:Lio/grpc/TlsServerCredentials$ClientAuth;

    .line 416
    new-instance v2, Lio/grpc/TlsServerCredentials$ClientAuth;

    const-string v3, "REQUIRE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/grpc/TlsServerCredentials$ClientAuth;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/grpc/TlsServerCredentials$ClientAuth;->REQUIRE:Lio/grpc/TlsServerCredentials$ClientAuth;

    .line 402
    filled-new-array {v0, v1, v2}, [Lio/grpc/TlsServerCredentials$ClientAuth;

    move-result-object v0

    sput-object v0, Lio/grpc/TlsServerCredentials$ClientAuth;->$VALUES:[Lio/grpc/TlsServerCredentials$ClientAuth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/TlsServerCredentials$ClientAuth;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 402
    const-class v0, Lio/grpc/TlsServerCredentials$ClientAuth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/grpc/TlsServerCredentials$ClientAuth;

    return-object v0
.end method

.method public static values()[Lio/grpc/TlsServerCredentials$ClientAuth;
    .locals 1

    .line 402
    sget-object v0, Lio/grpc/TlsServerCredentials$ClientAuth;->$VALUES:[Lio/grpc/TlsServerCredentials$ClientAuth;

    invoke-virtual {v0}, [Lio/grpc/TlsServerCredentials$ClientAuth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/TlsServerCredentials$ClientAuth;

    return-object v0
.end method
