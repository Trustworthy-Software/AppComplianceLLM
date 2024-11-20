.class public final Lcom/google/firebase/auth/internal/zzx;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/firebase/auth/FirebaseUserMetadata;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:J

.field private zzb:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/firebase/auth/internal/zzaa;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzaa;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/google/firebase/auth/internal/zzx;->zza:J

    .line 20
    iput-wide p3, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:J

    .line 21
    return-void
.end method

.method public static zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzx;
    .locals 5

    .line 4
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    const-string v1, "lastSignInTimestamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 7
    const-string v3, "creationTimestamp"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 8
    new-instance p0, Lcom/google/firebase/auth/internal/zzx;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/firebase/auth/internal/zzx;-><init>(JJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final getCreationTimestamp()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:J

    return-wide v0
.end method

.method public final getLastSignInTimestamp()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzx;->zza:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 22
    nop

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 24
    nop

    .line 25
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzx;->getLastSignInTimestamp()J

    move-result-wide v0

    .line 26
    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 27
    nop

    .line 28
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzx;->getCreationTimestamp()J

    move-result-wide v0

    .line 29
    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 30
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 31
    return-void
.end method

.method public final zza()Lorg/json/JSONObject;
    .locals 4

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    :try_start_0
    const-string v1, "lastSignInTimestamp"

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzx;->zza:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    const-string v1, "creationTimestamp"

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    :goto_0
    return-object v0
.end method
