Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC291840DF
	for <lists+linux-mediatek@lfdr.de>; Fri, 13 Mar 2020 07:39:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SdXtmvvw72mWsGDubTbbXfxsRkmyWXu7/vZyvbGLl4=; b=gsjQ4pzjo0riES
	aSIUwl4+Z6wrjShhccuNNGcc6YC43y7h5HxBxDSxOTtBI+pXjQ0dkMcPy9Grl9A7cmYnKt7TvRKyM
	AljKR5D+3EAJrQecoYFVkW7gEAX6+mzn2UZtq/RNveeKQv3Zl0Imf1R6PZh/kVJNef8ZPACR+KqOy
	Exci2US4HMbeEPKxFsT1QE8LmWS1d9sFqF5J7g46aGejLcy1Q4JtJcGfQKBtgTDP8Z3fwm2gfiTxp
	nimjg7wRsdvSEF6go9CLufwoNdt44LYgbvf9hmaMfZ7EP5EcxOCSLSmkdXx9g2JnJ1fp9OqtdQQ4J
	ma44i9C4fMc/if6B5FnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdyK-00063V-Ar; Fri, 13 Mar 2020 06:39:04 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdyG-00062q-W4; Fri, 13 Mar 2020 06:39:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02D6cLBh045507;
 Fri, 13 Mar 2020 01:38:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584081501;
 bh=WnpTMzvGCYaYRe1U/C0Li2r73YcUNVNL0RBtJe7C5ek=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ZZU9PqB4WRSyYzB+VHvVQFyK7EmiAjq7ufZBHjGSu7rHcr2wMpyGythnWr56MEX4x
 jKgXdxchUY48lmtQdykvq64KXsvJoMlqcgXzwCR6gQ//zVXgq0+6FZ8wPsxjJuoGfb
 7K65LjX1xfW1E8gPKPGXagL9Rca4Yks2WNscriOI=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02D6cL6q015872;
 Fri, 13 Mar 2020 01:38:21 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 01:38:21 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 01:38:21 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02D6cAZB046397;
 Fri, 13 Mar 2020 01:38:11 -0500
Subject: Re: [PATCH 04/23] mtd: spi-nor: Expose stuctures and functions to
 manufacturer drivers
To: <Tudor.Ambarus@microchip.com>, <bbrezillon@kernel.org>,
 <linux-mtd@lists.infradead.org>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
 <20200302180730.1886678-5-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <6b30b61b-c8e6-956e-b8b0-b795dfc9648f@ti.com>
Date: Fri, 13 Mar 2020 12:08:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200302180730.1886678-5-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_233901_114920_04FFEA2E 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, miquel.raynal@bootlin.com,
 opensource@jilayne.com, richard@nod.at, michal.simek@xilinx.com,
 Ludovic.Desroches@microchip.com, joel@jms.id.au, nishkadg.linux@gmail.com,
 john.garry@huawei.com, vz@mleia.com, alexander.sverdlin@nokia.com,
 matthias.bgg@gmail.com, tglx@linutronix.de, swboyd@chromium.org,
 mika.westerberg@linux.intel.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, andrew@aj.id.au,
 Nicolas.Ferre@microchip.com, linux-kernel@vger.kernel.org, dinguyen@kernel.org,
 michael@walle.cc, ludovic.barre@st.com, linux-mediatek@lists.infradead.org,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 02/03/20 11:37 pm, Tudor.Ambarus@microchip.com wrote:
> From: Boris Brezillon <bbrezillon@kernel.org>
> 
> Expose the flash_info struct and the generic set_4byte() implementations.
> Some manufacturers rely on the generic set_4byte() implementations.
> Remove the static specifier and expose their prototypes in core.h.
> 
> Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

-- 
Regards
Vignesh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
