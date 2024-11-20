.class Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;->zza:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;->zzb:I

    .line 5
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/firebase-auth-api/zzkb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;->zza:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(0x%04x)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
