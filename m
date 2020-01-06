Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F058131ACB
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Jan 2020 22:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3XFoceidxuJ0kfTrT8w8PlctdyTGS8i9uvz420XUME8=; b=BxFcDey4AgPeowhAWvUWr9CKK
	zUbSQmwfABGC6yWd2cGc7Ed5D0/HGk8s80XAFrmemg9iHrk9/aYVHLlFTMCix/56QafUV7HqoySnG
	k+5d5eZjNn/nsBLcEVDXOR5zd5CCrEwlvLdsNSy7RFdvlzZQz+gvCPgSF9wb+83JV1HeInvLHmHfm
	r1zKOIrvKHLlxAjdX+fgVjlfSS3eL0u/llpJsV5Bdwy2Ic7nUwhLNS6by85/s4S4m4y/HwJnZ5aOm
	aRd1TL6Slf7MFxxI+mLCNsPFtLAdSoQrHhi7PqYoab9yF4jP74VyirCuf9k6u3xc0IcfpglGKTPS3
	OhpSBkSAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaM5-0007Fa-2R; Mon, 06 Jan 2020 21:56:09 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaLs-00074E-M8; Mon, 06 Jan 2020 21:55:59 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 13:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,403,1571727600"; d="scan'208";a="245719807"
Received: from chewang-mobl.amr.corp.intel.com (HELO [10.254.185.10])
 ([10.254.185.10])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jan 2020 13:55:53 -0800
Subject: Re: [PATCH] ASoC: rt5677: add SPI_MASTER dependency
To: Jon Hunter <jonathanh@nvidia.com>, Arnd Bergmann <arnd@arndb.de>,
 Mark Brown <broonie@kernel.org>
References: <20191210195333.648018-1-arnd@arndb.de>
 <d739240f-aaa6-c310-9c68-16c1a08ce759@nvidia.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <9c9169cc-0da5-f247-c8f7-f6913ca2bfb5@linux.intel.com>
Date: Mon, 6 Jan 2020 15:55:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <d739240f-aaa6-c310-9c68-16c1a08ce759@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135558_032130_B54E0334 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Cezary Rojewski <cezary.rojewski@intel.com>, linux-tegra@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Jie Yang <yang.jie@linux.intel.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ben Zhang <benzh@chromium.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Curtis Malainey <cujomalainey@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org,
 KaiChieh Chuang <kaichieh.chuang@mediatek.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 12/11/19 4:59 AM, Jon Hunter wrote:
> 
> On 10/12/2019 19:52, Arnd Bergmann wrote:
>> When CONFIG_SPI is disabled, the newly added code for the DSP
>> firmware loading fails to link:
>>
>> ERROR: "rt5677_spi_hotword_detected" [sound/soc/codecs/snd-soc-rt5677.ko] undefined!
>> ERROR: "rt5677_spi_write" [sound/soc/codecs/snd-soc-rt5677.ko] undefined!
> 
> Would it be better if the above functions or the functions that call
> these are conditional on CONFIG_SND_SOC_RT5677_SPI?

they are already conditional, with a fallback provided:

#if IS_ENABLED(CONFIG_SND_SOC_RT5677_SPI)
int rt5677_spi_read(u32 addr, void *rxbuf, size_t len);
int rt5677_spi_write(u32 addr, const void *txbuf, size_t len);
int rt5677_spi_write_firmware(u32 addr, const struct firmware *fw);
void rt5677_spi_hotword_detected(void);
#else
static inline int rt5677_spi_read(u32 addr, void *rxbuf, size_t len)
{
	return -EINVAL;
}
static inline int rt5677_spi_write(u32 addr, const void *txbuf, size_t len)
{
	return -EINVAL;
}
static inline int rt5677_spi_write_firmware(u32 addr, const struct 
firmware *fw)
{
	return -EINVAL;
}
static inline void rt5677_spi_hotword_detected(void){}
#endif

and since we have the following definition

config SND_SOC_RT5677_SPI
	tristate
	default SND_SOC_RT5677 && SPI

in theory if SPI is not enabled the fallback static inlines would always 
be selected?

Arnd, if you can share the .config that exposes this problem it'd be nice

FWIW, there are other missing dependencies, the SPI controller was not 
explicitly enabled so depending on the Kconfigs used by a distro the 
machine driver probe could fail with the spi-RT5677AA component never 
registered. The patch below seems to work for me (more testing needed)

diff --git a/sound/soc/intel/boards/Kconfig b/sound/soc/intel/boards/Kconfig
index b149e28a2076..cf1a2fde4c47 100644
--- a/sound/soc/intel/boards/Kconfig
+++ b/sound/soc/intel/boards/Kconfig
@@ -50,6 +50,9 @@ config SND_SOC_INTEL_BDW_RT5677_MACH
         depends on I2C_DESIGNWARE_PLATFORM || COMPILE_TEST
         depends on GPIOLIB || COMPILE_TEST
         depends on X86_INTEL_LPSS || COMPILE_TEST
+       depends on SPI_MASTER
+       select SPI_PXA2XX
+       select SND_SOC_RT5677_SPI
         select SND_SOC_RT5677
         help
           This adds support for Intel Broadwell platform based boards with

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
