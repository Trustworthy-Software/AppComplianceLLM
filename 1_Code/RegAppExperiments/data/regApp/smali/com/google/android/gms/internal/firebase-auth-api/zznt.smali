.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zznt;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzpg;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zznt;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznt;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zznw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznw;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zznd;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzmx;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmx;)V

    .line 5
    nop

    .line 6
    return-object v0
.end method
