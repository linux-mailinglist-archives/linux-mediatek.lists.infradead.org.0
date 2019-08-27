Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5859EA65
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 16:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFvXTOUKz0ehwJhnQ3hqvuEIQJk3TQOx2zrQxs/FyvE=; b=ipzMdvjUPj1vzc
	syaJ+z32E5Ij/0K3F1ak9Avn37Co0C4xQHD92Vtv45UKXuJE7ay+n+yrIwpVL4Ny6UVhiYNfFkyoH
	5WDku+6u5AtgPrURSGR8rOyIJZRJzph+JFecHWPFtweX31TbnmfSp4+myvfkSAI5+bPoLEQeT7Nbv
	Sac14fLBj4Qa98YNYp6LeAbKXlDTkvtxxdCei0p+0NeOf7yCy9jQb0z8Y0eRkx/ewmwvMRsHKCV6N
	KChgP+mINuZocXHds2yQJzwxhM+W8OdU/VZsufYUU3eZjGygjMenemiWUBm3Z5YVJTLZQ5nU5QGfa
	UEI6rs1udJx87IFx/J1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2c7i-0005aQ-Rm; Tue, 27 Aug 2019 14:07:02 +0000
Received: from mail-eopbgr710074.outbound.protection.outlook.com
 ([40.107.71.74] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2c7e-0005Zp-LM; Tue, 27 Aug 2019 14:07:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KropETEEKKQVsemQf0gCIINbtiY+qGmpLBgx5UIcNYtX5TnLd810PbeDo8TLSNtikWkomJQTVzc6AhB3rN37PsykUMRi3jffU8+IiGuwDmtIBnHdotBexv8TqvE5rmvg/8se8RBumhvIIRTTpn4QI6Oq3UIjZSJot7WyZ3zyO6VzPlOEBvOv52chHvbZDqCJbOuAbWEd8+x6bMnw3srXKkCIRsSPrK/rSzYM9pWLh2o0itDWXHIupJ9pX3zqeYtVTdN1d2n/wbm1aKoiJzPTD43jhmCFLtr6N/TXhQKA1q399Njaqitk7wqWU6mM2R1EKcKQrf5b1eJAeqstK/H6bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vjPokZrKnjfm26czzZwfnznszP96JXp+KZFZrp4LIl0=;
 b=fiLCbL5yyQWPzboQkpds/x2v48aFRZb42VGZut02+Keec3GE6/L5l3gBQsaZPM3h0HRDMdft30TbPMMhipXA8Zz11eh+V7uSYPgjZeGAlBqj4muD/tJqcfrw95x//GpoWTcpSwri4LLdeR9/vVCBo/SYNtx3xgKIp1f4CD6DIUnQEL5vUnFDfOEXKM4fQtnXtsskuunlXAOSSh+47YchrVSjPMNVNuFdo+xFza4eXGDqBn9KngTUc6HyZb26g/ckCrtQ32v+mJojaMdgTIwR8OrJZUaA4QAHdPmOc3GsDCxQI+Du1cBpi5tQfcrmF4pvfD4XWUWThPK2Foi9OMcfYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vjPokZrKnjfm26czzZwfnznszP96JXp+KZFZrp4LIl0=;
 b=j8bDAKQhTXDGmwndfWUyFT3bqbXWwkE/uIKOD+x1Floox4Al9uSjhT0Z6HEsixDoVvRs4VlfeUQ9kQNZr7WCQKzVQEcDHLYDDdWFhrhv1bxLGT9R7twcEWXKlgsTGAymhQZTNzLilEtevWMVNFLCBw/M+f4+iIBD/8MASliXbnc=
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com (10.172.79.7) by
 CY4PR1201MB0037.namprd12.prod.outlook.com (10.172.78.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Tue, 27 Aug 2019 14:06:55 +0000
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::708e:c826:5b05:e3f0]) by CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::708e:c826:5b05:e3f0%11]) with mapi id 15.20.2199.021; Tue, 27 Aug
 2019 14:06:55 +0000
From: Harry Wentland <hwentlan@amd.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH RESEND 03/14] drm/amdgpu: Provide ddc symlink in dm
 connector's sysfs directory
Thread-Topic: [PATCH RESEND 03/14] drm/amdgpu: Provide ddc symlink in dm
 connector's sysfs directory
Thread-Index: AQHVXEQy4bdMU/E4KEWQW1YKbrvOHKcPCM4A
Date: Tue, 27 Aug 2019 14:06:55 +0000
Message-ID: <d7fa0b27-800b-9843-29cd-0e9095bfd75d@amd.com>
References: <cover.1566845537.git.andrzej.p@collabora.com>
 <40293fa4e619d1d1af213a076b1d03440e50c56c.1566845537.git.andrzej.p@collabora.com>
In-Reply-To: <40293fa4e619d1d1af213a076b1d03440e50c56c.1566845537.git.andrzej.p@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [165.204.55.250]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-clientproxiedby: YTBPR01CA0033.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:14::46) To CY4PR1201MB0230.namprd12.prod.outlook.com
 (2603:10b6:910:1e::7)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Harry.Wentland@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8336f750-1766-4bfa-1bf8-08d72af7d11b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0037; 
x-ms-traffictypediagnostic: CY4PR1201MB0037:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB0037E9A1B0D90CF8B8C890998CA00@CY4PR1201MB0037.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(376002)(39860400002)(346002)(199004)(189003)(5660300002)(305945005)(256004)(6486002)(81156014)(36756003)(7736002)(31686004)(8676002)(7406005)(3846002)(99286004)(2616005)(6116002)(4326008)(26005)(76176011)(486006)(71190400001)(2906002)(71200400001)(81166006)(2501003)(102836004)(31696002)(476003)(386003)(229853002)(52116002)(53936002)(6512007)(66066001)(65806001)(65956001)(53546011)(58126008)(8936002)(110136005)(6246003)(6436002)(54906003)(66946007)(316002)(446003)(7366002)(186003)(66476007)(66446008)(66556008)(11346002)(64756008)(4744005)(25786009)(6506007)(478600001)(7416002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1201MB0037;
 H:CY4PR1201MB0230.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +7fPAfqNWZf6cZKcQxXPRsR0/BLGvw+2x58Nox1VJq8Tau6Au7BfeCEDnenbdU0n90rC5eer0gwEuYUgeV7FElSYaHT/Fn6mr1lCV6tHoXbFasab4VIfufrY1FYDFOsR+4NEzT7vdwfYHdwpdOOoXlX5CR6DKJ7k1ijAPBMknpXVrUzIbV0iDtqid4ivmxzBuQYH0CCMAoYJY3eqkWHDte+UGzrQJ9r8n+cagwYkyM9qYGp3IQAfaH08fkWu43oGvJrahhOlusJCsLDfNuA2/rKCy1Bqq+UHpjWL0h4Tbbt/EVVn0mvDjY705lLI4hspswtwLZZfPj//LrkmbksHOP2KdwaOYxU6jZUKM0OegE5oOa5juwBHSex19QySEXcM2Cm5DwPsbDylR7Wl2Oh9hBhnnf5pICFlMDAJMM4REoY=
Content-ID: <B21E8E0F36C3F84EA1BD29A6779B155F@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8336f750-1766-4bfa-1bf8-08d72af7d11b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 14:06:55.3436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fb4P3l8tDYhu4SOUm5uBZKlVzF9tVZhoHDaXxNE3OUDNx01ZAtIC5OJ06PI38fHEJmiONgAra4vKAtTUR12LCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_070658_703268_01F29540 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, "Lakha,
 Bhawanpreet" <Bhawanpreet.Lakha@amd.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 "kernel@collabora.com" <kernel@collabora.com>, "Koo,
 Anthony" <Anthony.Koo@amd.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Zhou,
 David\(ChunMing\)" <David1.Zhou@amd.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, "Francis,
 David" <David.Francis@amd.com>, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Kukjin Kim <kgene@kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 CK Hu <ck.hu@mediatek.com>, "Wentland, Harry" <Harry.Wentland@amd.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Shashank Sharma <shashank.sharma@intel.com>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, "Li,
 Sun peng \(Leo\)" <Sunpeng.Li@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>, Enrico Weigelt <info@metux.net>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 "Kazlauskas, Nicholas" <Nicholas.Kazlauskas@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 "Deucher, Alexander" <Alexander.Deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>, "Koenig,
 Christian" <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2019-08-26 3:25 p.m., Andrzej Pietrasiewicz wrote:
> Use the ddc pointer provided by the generic connector.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Reviewed-by: Harry Wentland <harry.wentland@amd.com>

Harry

> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index cb7cfa9b34f2..e872a415b409 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -5144,11 +5144,12 @@ static int amdgpu_dm_connector_init(struct amdgpu_display_manager *dm,
>  
>  	connector_type = to_drm_connector_type(link->connector_signal);
>  
> -	res = drm_connector_init(
> +	res = drm_connector_init_with_ddc(
>  			dm->ddev,
>  			&aconnector->base,
>  			&amdgpu_dm_connector_funcs,
> -			connector_type);
> +			connector_type,
> +			&i2c->base);
>  
>  	if (res) {
>  		DRM_ERROR("connector_init failed\n");
> 
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
