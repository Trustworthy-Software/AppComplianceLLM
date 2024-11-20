.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzafb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaco;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafb;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafb;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
