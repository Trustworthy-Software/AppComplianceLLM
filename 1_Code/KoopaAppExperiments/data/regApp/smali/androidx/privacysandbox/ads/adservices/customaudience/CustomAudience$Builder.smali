.class public final Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
.super Ljava/lang/Object;
.source "CustomAudience.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0014\u0010\u0017\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0011J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;",
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
        "(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V",
        "activationTime",
        "Ljava/time/Instant;",
        "expirationTime",
        "trustedBiddingData",
        "Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;",
        "userBiddingSignals",
        "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;",
        "build",
        "Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;",
        "setActivationTime",
        "setAds",
        "setBiddingLogicUri",
        "setBuyer",
        "setDailyUpdateUri",
        "setExpirationTime",
        "setName",
        "setTrustedBiddingData",
        "trustedBiddingSignals",
        "setUserBiddingSignals",
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
.field private activationTime:Ljava/time/Instant;

.field private ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private biddingLogicUri:Landroid/net/Uri;

.field private buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

.field private dailyUpdateUri:Landroid/net/Uri;

.field private expirationTime:Ljava/time/Instant;

.field private name:Ljava/lang/String;

.field private trustedBiddingData:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

.field private userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .locals 1
    .param p1, "buyer"    # Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dailyUpdateUri"    # Landroid/net/Uri;
    .param p4, "biddingLogicUri"    # Landroid/net/Uri;
    .param p5, "ads"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdData;",
            ">;)V"
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

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 108
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->name:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->dailyUpdateUri:Landroid/net/Uri;

    .line 110
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->biddingLogicUri:Landroid/net/Uri;

    .line 111
    iput-object p5, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->ads:Ljava/util/List;

    .line 106
    return-void
.end method


# virtual methods
.method public final build()Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;
    .locals 11

    .line 248
    new-instance v10, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    .line 249
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 250
    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->name:Ljava/lang/String;

    .line 251
    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->dailyUpdateUri:Landroid/net/Uri;

    .line 252
    iget-object v4, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->biddingLogicUri:Landroid/net/Uri;

    .line 253
    iget-object v5, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->ads:Ljava/util/List;

    .line 254
    iget-object v6, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->activationTime:Ljava/time/Instant;

    .line 255
    iget-object v7, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->expirationTime:Ljava/time/Instant;

    .line 256
    iget-object v8, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 257
    iget-object v9, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->trustedBiddingData:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    .line 248
    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;-><init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;)V

    return-object v10
.end method

.method public final setActivationTime(Ljava/time/Instant;)Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .locals 2
    .param p1, "activationTime"    # Ljava/time/Instant;

    const-string v0, "activationTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .local v0, "$this$setActivationTime_u24lambda_u242":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    const/4 v1, 0x0

    .line 155
    .local v1, "$i$a$-apply-CustomAudience$Builder$setActivationTime$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->activationTime:Ljava/time/Instant;

    .line 156
    nop

    .line 154
    .end local v0    # "$this$setActivationTime_u24lambda_u242":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .end local v1    # "$i$a$-apply-CustomAudience$Builder$setActivationTime$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .line 156
    return-object v0
.end method

.method public final setAds(Ljava/util/List;)Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .locals 2
    .param p1, "ads"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdData;",
            ">;)",
            "Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;"
        }
    .end annotation

    const-string v0, "ads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .local v0, "$this$setAds_u24lambda_u248":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    const/4 v1, 0x0

    .line 241
    .local v1, "$i$a$-apply-CustomAudience$Builder$setAds$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->ads:Ljava/util/List;

    .line 242
    nop

    .line 240
    .end local v0    # "$this$setAds_u24lambda_u248":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .end local v1    # "$i$a$-apply-CustomAudience$Builder$setAds$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .line 242
    return-object v0
.end method

.method public final setBiddingLogicUri(Landroid/net/Uri;)Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .locals 2
    .param p1, "biddingLogicUri"    # Landroid/net/Uri;

    const-string v0, "biddingLogicUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .local v0, "$this$setBiddingLogicUri_u24lambda_u247":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    const/4 v1, 0x0

    .line 226
    .local v1, "$i$a$-apply-CustomAudience$Builder$setBiddingLogicUri$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->biddingLogicUri:Landroid/net/Uri;

    .line 227
    nop

    .line 225
    .end local v0    # "$this$setBiddingLogicUri_u24lambda_u247":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .end local v1    # "$i$a$-apply-CustomAudience$Builder$setBiddingLogicUri$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .line 227
    return-object v0
.end method

.method public final setBuyer(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;)Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .locals 2
    .param p1, "buyer"    # Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    const-string v0, "buyer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .local v0, "$this$setBuyer_u24lambda_u240":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$a$-apply-CustomAudience$Builder$setBuyer$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 125
    nop

    .line 123
    .end local v0    # "$this$setBuyer_u24lambda_u240":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .end local v1    # "$i$a$-apply-CustomAudience$Builder$setBuyer$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .line 125
    return-object v0
.end method

.method public final setDailyUpdateUri(Landroid/net/Uri;)Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .locals 2
    .param p1, "dailyUpdateUri"    # Landroid/net/Uri;

    const-string v0, "dailyUpdateUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .local v0, "$this$setDailyUpdateUri_u24lambda_u244":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    const/4 v1, 0x0

    .line 182
    .local v1, "$i$a$-apply-CustomAudience$Builder$setDailyUpdateUri$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->dailyUpdateUri:Landroid/net/Uri;

    .line 183
    nop

    .line 181
    .end local v0    # "$this$setDailyUpdateUri_u24lambda_u244":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .end local v1    # "$i$a$-apply-CustomAudience$Builder$setDailyUpdateUri$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .line 183
    return-object v0
.end method

.method public final setExpirationTime(Ljava/time/Instant;)Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .locals 2
    .param p1, "expirationTime"    # Ljava/time/Instant;

    const-string v0, "expirationTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .local v0, "$this$setExpirationTime_u24lambda_u243":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    const/4 v1, 0x0

    .line 172
    .local v1, "$i$a$-apply-CustomAudience$Builder$setExpirationTime$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->expirationTime:Ljava/time/Instant;

    .line 173
    nop

    .line 171
    .end local v0    # "$this$setExpirationTime_u24lambda_u243":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .end local v1    # "$i$a$-apply-CustomAudience$Builder$setExpirationTime$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .line 173
    return-object v0
.end method

.method public final setName(Ljava/lang/String;)Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .local v0, "$this$setName_u24lambda_u241":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    const/4 v1, 0x0

    .line 134
    .local v1, "$i$a$-apply-CustomAudience$Builder$setName$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->name:Ljava/lang/String;

    .line 135
    nop

    .line 133
    .end local v0    # "$this$setName_u24lambda_u241":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .end local v1    # "$i$a$-apply-CustomAudience$Builder$setName$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .line 135
    return-object v0
.end method

.method public final setTrustedBiddingData(Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;)Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .locals 2
    .param p1, "trustedBiddingSignals"    # Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    const-string v0, "trustedBiddingSignals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .local v0, "$this$setTrustedBiddingData_u24lambda_u246":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    const/4 v1, 0x0

    .line 216
    .local v1, "$i$a$-apply-CustomAudience$Builder$setTrustedBiddingData$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->trustedBiddingData:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    .line 217
    nop

    .line 215
    .end local v0    # "$this$setTrustedBiddingData_u24lambda_u246":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .end local v1    # "$i$a$-apply-CustomAudience$Builder$setTrustedBiddingData$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .line 217
    return-object v0
.end method

.method public final setUserBiddingSignals(Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;)Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .locals 2
    .param p1, "userBiddingSignals"    # Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    const-string v0, "userBiddingSignals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .local v0, "$this$setUserBiddingSignals_u24lambda_u245":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$a$-apply-CustomAudience$Builder$setUserBiddingSignals$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 200
    nop

    .line 198
    .end local v0    # "$this$setUserBiddingSignals_u24lambda_u245":Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    .end local v1    # "$i$a$-apply-CustomAudience$Builder$setUserBiddingSignals$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;

    .line 200
    return-object v0
.end method
