.class public Lorg/osmdroid/tileprovider/util/CloudmadeUtil;
.super Ljava/lang/Object;
.source "CloudmadeUtil.java"


# static fields
.field private static final CLOUDMADE_ID:Ljava/lang/String; = "CLOUDMADE_ID"

.field private static final CLOUDMADE_KEY:Ljava/lang/String; = "CLOUDMADE_KEY"

.field private static final CLOUDMADE_TOKEN:Ljava/lang/String; = "CLOUDMADE_TOKEN"

.field public static DEBUGMODE:Z

.field private static mAndroidId:Ljava/lang/String;

.field private static mKey:Ljava/lang/String;

.field private static mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private static mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->DEBUGMODE:Z

    .line 46
    const-string v0, "android_id"

    sput-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    .line 56
    sput-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudmadeKey()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getCloudmadeToken()Ljava/lang/String;
    .locals 10

    .line 112
    sget-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 113
    sget-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://auth.cloudmade.com/token/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?userid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 120
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 122
    .local v4, "is":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    .local v5, "urlToRequest":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v2, v6

    .line 124
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 125
    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 126
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->getAdditionalHttpRequestProperties()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 129
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 132
    sget-boolean v6, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->DEBUGMODE:Z

    if-eqz v6, :cond_1

    .line 133
    const-string v6, "OsmDroid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response from Cloudmade auth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_4

    .line 136
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v4, v6

    .line 137
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v6, v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v6

    .line 138
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "line":Ljava/lang/String;
    sget-boolean v7, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->DEBUGMODE:Z

    if-eqz v7, :cond_2

    .line 140
    const-string v7, "OsmDroid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "First line from Cloudmade auth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    .line 143
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 144
    sget-object v7, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v8, "CLOUDMADE_TOKEN"

    sget-object v9, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    sget-object v7, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    const/4 v7, 0x0

    sput-object v7, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 149
    :cond_3
    const-string v7, "OsmDroid"

    const-string v8, "No authorization token received from Cloudmade"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v5    # "urlToRequest":Ljava/net/URL;
    .end local v6    # "line":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 157
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    goto :goto_2

    .line 158
    :catch_0
    move-exception v5

    .line 160
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 162
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    goto :goto_3

    .line 163
    :catch_1
    move-exception v5

    .line 165
    :cond_6
    :goto_3
    if-eqz v4, :cond_c

    .line 167
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    .line 155
    :catchall_0
    move-exception v5

    goto :goto_7

    .line 152
    :catch_2
    move-exception v5

    .line 153
    .local v5, "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "OsmDroid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No authorization token received from Cloudmade: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    nop

    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_7

    .line 157
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 159
    goto :goto_4

    .line 158
    :catch_3
    move-exception v5

    .line 160
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 162
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 164
    goto :goto_5

    .line 163
    :catch_4
    move-exception v5

    .line 165
    :cond_8
    :goto_5
    if-eqz v4, :cond_c

    .line 167
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 169
    :goto_6
    goto :goto_b

    .line 168
    :catch_5
    move-exception v5

    goto :goto_6

    .line 155
    :goto_7
    if-eqz v2, :cond_9

    .line 157
    :try_start_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 159
    goto :goto_8

    .line 158
    :catch_6
    move-exception v6

    .line 160
    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    .line 162
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 164
    goto :goto_9

    .line 163
    :catch_7
    move-exception v6

    .line 165
    :cond_a
    :goto_9
    if-eqz v4, :cond_b

    .line 167
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 169
    goto :goto_a

    .line 168
    :catch_8
    move-exception v6

    .line 170
    :cond_b
    :goto_a
    :try_start_c
    throw v5

    .line 172
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStreamReader;
    :cond_c
    :goto_b
    monitor-exit v0

    goto :goto_c

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v1

    .line 175
    :cond_d
    :goto_c
    sget-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public static retrieveCloudmadeKey(Landroid/content/Context;)V
    .locals 5
    .param p0, "aContext"    # Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    .line 68
    const-string v0, "CLOUDMADE_KEY"

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v1, "CLOUDMADE_ID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "id":Ljava/lang/String;
    sget-object v4, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    const-string v1, "CLOUDMADE_TOKEN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 78
    const/4 v1, 0x0

    sput-object v1, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 81
    :cond_0
    sget-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    sget-object v1, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method public static setCloudmadeKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;

    .line 102
    sput-object p0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    .line 103
    return-void
.end method
