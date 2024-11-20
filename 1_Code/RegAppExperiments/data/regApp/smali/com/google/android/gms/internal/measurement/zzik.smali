.class public Lcom/google/android/gms/internal/measurement/zzik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzik$zza;
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzik;

.field private static volatile zzb:Z

.field private static zzc:Z

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzik;


# instance fields
.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/zzik$zza;",
            "Lcom/google/android/gms/internal/measurement/zzix$zzf<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzik;->zzb:Z

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzik;->zzc:Z

    .line 19
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzik;-><init>(Z)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzik;->zze:Ljava/util/Map;

    .line 22
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzik;->zze:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzik;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzik;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    .line 2
    if-eqz v0, :cond_0

    .line 3
    return-object v0

    .line 4
    :cond_0
    const-class v0, Lcom/google/android/gms/internal/measurement/zzik;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzik;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    .line 6
    if-eqz v1, :cond_1

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_1
    nop

    .line 9
    const-class v1, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zziv;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v1

    .line 10
    nop

    .line 11
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzik;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    .line 12
    monitor-exit v0

    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzkj;I)Lcom/google/android/gms/internal/measurement/zzix$zzf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/zzkj;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/zzix$zzf<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzik;->zze:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzik$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzik$zza;-><init>(Ljava/lang/Object;I)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix$zzf;

    .line 16
    return-object p1
.end method
