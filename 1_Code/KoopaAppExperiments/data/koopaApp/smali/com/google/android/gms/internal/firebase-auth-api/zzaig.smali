.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzaig;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

.field private static volatile zzb:Z

.field private static zzc:Z


# instance fields
.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaif;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzf<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zzb:Z

    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zzc:Z

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;-><init>(Z)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zzd:Ljava/util/Map;

    .line 10
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zzd:Ljava/util/Map;

    .line 13
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;I)Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzf<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zzd:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaif;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaif;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzf;

    .line 4
    return-object p1
.end method
