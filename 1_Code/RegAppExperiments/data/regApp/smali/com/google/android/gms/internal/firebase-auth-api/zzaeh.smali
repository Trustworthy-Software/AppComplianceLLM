.class public Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzacn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzacn<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

.field private zzg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    .line 19
    return-void
.end method

.method private final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaad;
        }
    .end annotation

    .line 2
    const-string v0, "allProviders"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v2, "authUri"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zzb:Ljava/lang/String;

    .line 4
    const-string v2, "registered"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zzc:Z

    .line 5
    const-string v2, "providerId"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zzd:Ljava/lang/String;

    .line 6
    const-string v2, "forExistingProvider"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zze:Z

    .line 7
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    .line 10
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzage;-><init>(ILjava/util/List;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    .line 11
    :goto_0
    const-string v0, "signinMethods"

    .line 12
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zzg:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zza:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zza(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaad;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacn;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaad;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;->zzg:Ljava/util/List;

    return-object v0
.end method
