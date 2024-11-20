.class public final Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;
.super Ljava/lang/Object;
.source "CustomAudience.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001*Bc\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020\u0005H\u0016R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u0006+"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;",
        "",
        "buyer",
        "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
        "name",
        "",
        "dailyUpdateUri",
        "Landroid/net/Uri;",
        "biddingLogicUri",
        "ads",
        "",
        "Landroidx/privacysandbox/ads/adservices/common/AdData;",
        "activationTime",
        "Ljava/time/Instant;",
        "expirationTime",
        "userBiddingSignals",
        "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;",
        "trustedBiddingSignals",
        "Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;",
        "(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;)V",
        "getActivationTime",
        "()Ljava/time/Instant;",
        "getAds",
        "()Ljava/util/List;",
        "getBiddingLogicUri",
        "()Landroid/net/Uri;",
        "getBuyer",
        "()Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
        "getDailyUpdateUri",
        "getExpirationTime",
        "getName",
        "()Ljava/lang/String;",
        "getTrustedBiddingSignals",
        "()Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;",
        "getUserBiddingSignals",
        "()Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Builder",
        "ads-adservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activationTime:Ljava/time/Instant;

.field private final ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private final biddingLogicUri:Landroid/net/Uri;

.field private final buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

.field private final dailyUpdateUri:Landroid/net/Uri;

.field private final expirationTime:Ljava/time/Instant;

.field private final name:Ljava/lang/String;

.field private final trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

.field private final userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;)V
    .locals 1
    .param p1, "buyer"    # Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dailyUpdateUri"    # Landroid/net/Uri;
    .param p4, "biddingLogicUri"    # Landroid/net/Uri;
    .param p5, "ads"    # Ljava/util/List;
    .param p6, "activationTime"    # Ljava/time/Instant;
    .param p7, "expirationTime"    # Ljava/time/Instant;
    .param p8, "userBiddingSignals"    # Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;
    .param p9, "trustedBiddingSignals"    # Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdData;",
            ">;",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;",
            "Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;",
            ")V"
        }
    .end annotation

    const-string v0, "buyer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dailyUpdateUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingLogicUri"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ads"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 53
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    .line 55
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    .line 56
    iput-object p5, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    .line 57
    iput-object p6, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    .line 58
    iput-object p7, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    .line 59
    iput-object p8, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 60
    iput-object p9, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    .line 51
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    .line 51
    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 57
    move-object v9, v2

    goto :goto_0

    .line 51
    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 58
    move-object v10, v2

    goto :goto_1

    .line 51
    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    .line 59
    move-object v11, v2

    goto :goto_2

    .line 51
    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    .line 60
    move-object v12, v2

    goto :goto_3

    .line 51
    :cond_3
    move-object/from16 v12, p9

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v12}, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;-><init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;)V

    .line 261
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 69
    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    move-object v3, p1

    check-cast v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    iget-object v3, v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    iget-object v3, v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    move-object v3, p1

    check-cast v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    iget-object v3, v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    move-object v3, p1

    check-cast v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    iget-object v3, v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    move-object v3, p1

    check-cast v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    iget-object v3, v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    move-object v3, p1

    check-cast v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    iget-object v3, v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    move-object v3, p1

    check-cast v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    iget-object v3, v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    move-object v3, p1

    check-cast v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    iget-object v3, v3, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 69
    :goto_0
    return v0
.end method

.method public final getActivationTime()Ljava/time/Instant;
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdData;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    return-object v0
.end method

.method public final getBiddingLogicUri()Landroid/net/Uri;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getBuyer()Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public final getDailyUpdateUri()Landroid/net/Uri;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getExpirationTime()Ljava/time/Instant;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrustedBiddingSignals()Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    return-object v0
.end method

.method public final getUserBiddingSignals()Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 83
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->hashCode()I

    move-result v0

    .line 84
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 85
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 86
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v1, v2

    .line 87
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 88
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v1, v2

    .line 89
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_3
    add-int/2addr v0, v3

    .line 90
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 91
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 92
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomAudience: buyer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    nop

    .line 96
    const-string v1, ", activationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    nop

    .line 96
    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    nop

    .line 96
    const-string v1, ", dailyUpdateUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    nop

    .line 96
    const-string v1, ", userBiddingSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    nop

    .line 96
    const-string v1, ", trustedBiddingSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    nop

    .line 96
    const-string v1, ", biddingLogicUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    nop

    .line 96
    const-string v1, ", ads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
