Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C14B97869
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 13:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQhpFN37dD7dMW1Rd18F1kw0EbxlzXsdc5EhXxJSJBE=; b=NufWnus53OlH47
	1iy22BFNRpI5ZPoemszaL7D/MNN0FUvp+1IoD7P2zyV6ZInsQ35iNvG1q1zhDFn/r6v9v/zB0P06L
	3EfxVo1vxvcWWUw8BPSpYP+X5OaChJkalt/aHLYm/Hfn92my60aSKO6aUx3vfRefo4eEwHqZCyWrF
	Wcjq9rCAvjyO8olh5/PX2K93KYeZx9LnsncNnmBizsASdyT6cbcMtR58bTLKxlGN7ANAK6s76uoly
	/KWcl9dR84biPfUmVBs3k5PEvOxzf+LDGik/Z8Q4SHIumxB6mdYYUxo4yUQJhC8/cNlOgPud8Ag84
	SPCIB2GVmkyBqTfZZgFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PCY-0006nA-Jk; Wed, 21 Aug 2019 11:54:54 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PBn-0006Zc-UP
 for linux-mediatek@lists.infradead.org; Wed, 21 Aug 2019 11:54:11 +0000
Received: by mail-vs1-xe49.google.com with SMTP id v20so614191vsa.23
 for <linux-mediatek@lists.infradead.org>; Wed, 21 Aug 2019 04:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=dbeW0AhXXR+v+YpCW2kANc+N3K5c0SZUYgqqbrZZvE4=;
 b=aFsPSoldM0Bd3aP9qJf30Ez9RAxoobocKtreV6qZLpZt8GkW7vl5cqWuJrbWh976Yb
 O6PJiYAMkAVxNpXHI4U394FvT0flIvSg+jsiI7gtohdkD4B6wlBMzDmUcAHTPDgXSYn0
 XNELYY9SOwcG2+YLsILGLD72LxV62fTC3S2cEs6KtuTBjsa3i6n6N5uxjKvV0MwRSz6V
 RA6jA3/uX5YE3XaHxektIv6xLOwNvbtx5jCPbkW6UZFn0RUB/19f1mkieVvh9lJfx/uh
 GTw8bLjusCSmCyuEUFWe99eIkgh0CfPTuSyKXKPwxKWjvT7+jE7jXHWOaEgwgtxCUe1d
 8rlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=dbeW0AhXXR+v+YpCW2kANc+N3K5c0SZUYgqqbrZZvE4=;
 b=YgE8BIlFYtTm0/TtUZmzknntesAlWt5MEtmAd7oAA3U2D5WsQp/LTezgBY2zSqLfQG
 2g0h0yBGj0HJ7iBsCGlZQn0kMeWRwioh8RILhY46qShGxhJ6RHNoyXGXmdqhbckOKOMS
 HLVX5u/KNIbKpSmFzHZVb9WXp9Thjx2kja3C5KCgge1RkKp5x4/IbBDnRGzaWtZ5B7Ll
 y7AHBMVE5jB6ISi9uozH5VUHVjmkJwDtn8w3fKHIifGCbmv2Ov4To5cPX/H3TS+6CTPl
 xTaNHgkMpWaJ9MgwiQoIFqBIGfy2PK9zf4+dqhiEoD3qOW1JZZc7Z3dxKqvwa7gAh6+H
 wsLQ==
X-Gm-Message-State: APjAAAW0DSlb7DKp61Swb7wdeiOULZLvz94X7PpLacvNs44d/zr3YIoo
 2eZqin1mtwNtX6PtE0lMnKvW2Heq6E3JDQ==
X-Google-Smtp-Source: APXvYqzEhKafXMjJoeTZyC7zvtkDGEgBz64AYQQy+0Uw+lMBm7os5APWm8dgDVK460ybb2au7ed1CCFcEK0k1Q==
X-Received: by 2002:a1f:3887:: with SMTP id f129mr12005868vka.15.1566388444681; 
 Wed, 21 Aug 2019 04:54:04 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:15 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190821114955.12788-1-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v3 00/11] Symbol Namespaces
From: Matthias Maennich <maennich@google.com>
To: linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_045408_186925_EB363A25 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kstewart@linuxfoundation.org, oneukum@suse.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-aspeed@lists.ozlabs.org,
 usb-storage@lists.one-eyed-alien.net, Toru Komatsu <k0ma@utam0k.jp>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 David Howells <dhowells@redhat.com>, yamada.masahiro@socionext.com,
 Will Deacon <will@kernel.org>, patches@opensource.cirrus.com,
 Michael Ellerman <mpe@ellerman.id.au>, hpa@zytor.com, joel@joelfernandes.org,
 bcm-kernel-feedback-list@broadcom.com, sam@ravnborg.org, cocci@systeme.lip6.fr,
 linux-arch@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Benjamin Fair <benjaminfair@google.com>, linux-scsi@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, openbmc@lists.ozlabs.org, x86@kernel.org,
 lucas.de.marchi@gmail.com, Nancy Yuen <yuenn@google.com>, mingo@redhat.com,
 geert@linux-m68k.org, NXP Linux Team <linux-imx@nxp.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Patrick Venture <venture@google.com>,
 stern@rowland.harvard.edu, kernel-team@android.com,
 Dan Williams <dan.j.williams@intel.com>, Ingo Molnar <mingo@kernel.org>,
 linux-rtc@vger.kernel.org, Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>,
 sspatil@google.com, linux-watchdog@vger.kernel.org, arnd@arndb.de,
 linux-kbuild@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 linux-arm-msm@vger.kernel.org, jeyu@kernel.org, maennich@google.com,
 Julia Lawall <julia.lawall@lip6.fr>, linux-m68k@lists.linux-m68k.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, maco@android.com, linux-arm-kernel@lists.infradead.org,
 Adrian Reber <adrian@lisas.de>, linux-hwmon@vger.kernel.org,
 michal.lkml@markovi.net, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Andrew Jeffery <andrew@aj.id.au>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, Alexey Gladkov <gladkov.alexey@gmail.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Nicolas Pitre <nico@fluxnic.net>,
 Patrick Bellasi <patrick.bellasi@arm.com>, Richard Guy Briggs <rgb@redhat.com>,
 maco@google.com, Pengutronix Kernel Team <kernel@pengutronix.de>,
 pombredanne@nexb.com, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-modules@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

As of Linux 5.3-rc5, there are 31205 [1] exported symbols in the kernel.
That is a growth of roughly 1000 symbols since 4.17 (30206 [2]).  There
seems to be some consensus amongst kernel devs that the export surface
is too large, and hard to reason about.

Generally, these symbols fall in one of these categories:
1) Symbols actually meant for drivers
2) Symbols that are only exported because functionality is split over
   multiple modules, yet they really shouldn't be used by modules outside
   of their own subsystem
3) Symbols really only meant for in-tree use

When module developers try to upstream their code, it regularly turns
out that they are using exported symbols that they really shouldn't be
using. This problem is even bigger for drivers that are currently
out-of-tree, which may be using many symbols that they shouldn't be
using, and that break when those symbols are removed or modified.

This patch allows subsystem maintainers to partition their exported
symbols into separate namespaces, and module authors to import such
namespaces only when needed.

This allows subsystem maintainers to more easily limit availability of
these namespaced symbols to other parts of the kernel. It can also be
used to partition the set of exported symbols for documentation
purposes; for example, a set of symbols that is really only used for
debugging could be in a "SUBSYSTEM_DEBUG" namespace.

I continued the work mainly done by Martijn Coenen.

Changes in v2:
- Rather than adding and evaluating separate sections __knsimport_NS,
  use modinfo tags to declare the namespaces a module introduces.
  Adjust modpost and the module loader accordingly.
- Also add support for reading multiple modinfo values for the same tag
  to allow list-like access to modinfo tags.
- The macros in export.h have been cleaned up to avoid redundancy in the
  macro parameters (ns, nspost, nspost2).
- The introduction of relative references in the ksymtab entries caused
  a rework of the macros to accommodate that configuration as well.
- Alignment of kernel_symbol in the ksymtab needed to be fixed to allow
  growing the kernel_symbol struct.
- Modpost does now also append the namespace suffix to the symbol
  entries in Module.symvers.
- The configuration option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS allows
  relaxing the enforcement of properly declared namespace imports at
  module loading time.
- Symbols can be collectively exported into a namespace by defining
  DEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile.
- The requirement for a very recent coccinelle spatch has been lifted by
  simplifying the script.
- nsdeps does now ensures MODULE_IMPORT_NS statements are sorted when
  patching the module source files.
- Some minor bugs have been addressed in nsdeps to allow it to work with
  modules that have more than one source file.
- The RFC for the usb-storage symbols has been simplified by using
  DEFAULT_SYMBOL_NAMESPACE=USB_STORAGE rather than explicitly exporting
  each and every symbol into that new namespace.

Changes in v3:
- Reword the documentation for the
  MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS option for clarification.
- Fix printed required version of spatch in coccinelle script.
- Adopt kbuild changes for modpost: .mod files are no longer generated
  in .tmp_versions. Similarely, generate the .ns_deps files in the tree
  along with the .mod files. Also, nsdeps now uses modules.order as
  source for the list modules to consider.
- Add an RFC patch to introduce the namespace WATCHDOG_CORE for symbols
  exported in watchdog_core.c.

This patch series was developed against Linus' master (15d90b242290).

[1] git grep "^EXPORT_SYMBOL\w*(" v5.3-rc5 | wc -l
[2] git grep "^EXPORT_SYMBOL\w*(" v4.17    | wc -l


Matthias Maennich (11):
  module: support reading multiple values per modinfo tag
  export: explicitly align struct kernel_symbol
  module: add support for symbol namespaces.
  modpost: add support for symbol namespaces
  module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
  export: allow definition default namespaces in Makefiles or sources
  modpost: add support for generating namespace dependencies
  scripts: Coccinelle script for namespace dependencies.
  usb-storage: remove single-use define for debugging
  RFC: usb-storage: export symbols in USB_STORAGE namespace
  RFC: watchdog: export core symbols in WATCHDOG_CORE namespace

 .gitignore                                  |   1 +
 MAINTAINERS                                 |   5 +
 Makefile                                    |  14 +-
 arch/m68k/include/asm/export.h              |   1 -
 drivers/hwmon/ftsteutates.c                 |   1 +
 drivers/hwmon/sch56xx-common.c              |   1 +
 drivers/rtc/rtc-abx80x.c                    |   1 +
 drivers/usb/storage/Makefile                |   2 +
 drivers/usb/storage/alauda.c                |   1 +
 drivers/usb/storage/cypress_atacb.c         |   1 +
 drivers/usb/storage/datafab.c               |   1 +
 drivers/usb/storage/debug.h                 |   2 -
 drivers/usb/storage/ene_ub6250.c            |   1 +
 drivers/usb/storage/freecom.c               |   1 +
 drivers/usb/storage/isd200.c                |   1 +
 drivers/usb/storage/jumpshot.c              |   1 +
 drivers/usb/storage/karma.c                 |   1 +
 drivers/usb/storage/onetouch.c              |   1 +
 drivers/usb/storage/realtek_cr.c            |   1 +
 drivers/usb/storage/scsiglue.c              |   2 +-
 drivers/usb/storage/sddr09.c                |   1 +
 drivers/usb/storage/sddr55.c                |   1 +
 drivers/usb/storage/shuttle_usbat.c         |   1 +
 drivers/usb/storage/uas.c                   |   1 +
 drivers/watchdog/armada_37xx_wdt.c          |   1 +
 drivers/watchdog/asm9260_wdt.c              |   1 +
 drivers/watchdog/aspeed_wdt.c               |   1 +
 drivers/watchdog/at91sam9_wdt.c             |   1 +
 drivers/watchdog/atlas7_wdt.c               |   1 +
 drivers/watchdog/bcm2835_wdt.c              |   1 +
 drivers/watchdog/bcm47xx_wdt.c              |   1 +
 drivers/watchdog/bcm7038_wdt.c              |   1 +
 drivers/watchdog/bcm_kona_wdt.c             |   1 +
 drivers/watchdog/bd70528_wdt.c              |   1 +
 drivers/watchdog/cadence_wdt.c              |   1 +
 drivers/watchdog/da9052_wdt.c               |   1 +
 drivers/watchdog/da9055_wdt.c               |   1 +
 drivers/watchdog/da9062_wdt.c               |   1 +
 drivers/watchdog/da9063_wdt.c               |   1 +
 drivers/watchdog/davinci_wdt.c              |   1 +
 drivers/watchdog/digicolor_wdt.c            |   1 +
 drivers/watchdog/dw_wdt.c                   |   1 +
 drivers/watchdog/ebc-c384_wdt.c             |   1 +
 drivers/watchdog/ep93xx_wdt.c               |   1 +
 drivers/watchdog/ftwdt010_wdt.c             |   1 +
 drivers/watchdog/gpio_wdt.c                 |   1 +
 drivers/watchdog/hpwdt.c                    |   1 +
 drivers/watchdog/i6300esb.c                 |   1 +
 drivers/watchdog/iTCO_wdt.c                 |   1 +
 drivers/watchdog/ie6xx_wdt.c                |   1 +
 drivers/watchdog/imgpdc_wdt.c               |   1 +
 drivers/watchdog/imx2_wdt.c                 |   1 +
 drivers/watchdog/intel-mid_wdt.c            |   1 +
 drivers/watchdog/it87_wdt.c                 |   1 +
 drivers/watchdog/kempld_wdt.c               |   1 +
 drivers/watchdog/lpc18xx_wdt.c              |   1 +
 drivers/watchdog/max63xx_wdt.c              |   1 +
 drivers/watchdog/max77620_wdt.c             |   1 +
 drivers/watchdog/mei_wdt.c                  |   1 +
 drivers/watchdog/mena21_wdt.c               |   1 +
 drivers/watchdog/menf21bmc_wdt.c            |   1 +
 drivers/watchdog/menz69_wdt.c               |   1 +
 drivers/watchdog/meson_gxbb_wdt.c           |   1 +
 drivers/watchdog/meson_wdt.c                |   1 +
 drivers/watchdog/mlx_wdt.c                  |   1 +
 drivers/watchdog/moxart_wdt.c               |   1 +
 drivers/watchdog/mtk_wdt.c                  |   1 +
 drivers/watchdog/ni903x_wdt.c               |   1 +
 drivers/watchdog/nic7018_wdt.c              |   1 +
 drivers/watchdog/npcm_wdt.c                 |   1 +
 drivers/watchdog/of_xilinx_wdt.c            |   1 +
 drivers/watchdog/omap_wdt.c                 |   1 +
 drivers/watchdog/pm8916_wdt.c               |   1 +
 drivers/watchdog/qcom-wdt.c                 |   1 +
 drivers/watchdog/rave-sp-wdt.c              |   1 +
 drivers/watchdog/renesas_wdt.c              |   1 +
 drivers/watchdog/retu_wdt.c                 |   1 +
 drivers/watchdog/rn5t618_wdt.c              |   1 +
 drivers/watchdog/rza_wdt.c                  |   1 +
 drivers/watchdog/s3c2410_wdt.c              |   1 +
 drivers/watchdog/sama5d4_wdt.c              |   1 +
 drivers/watchdog/sirfsoc_wdt.c              |   1 +
 drivers/watchdog/softdog.c                  |   1 +
 drivers/watchdog/sp5100_tco.c               |   1 +
 drivers/watchdog/sprd_wdt.c                 |   1 +
 drivers/watchdog/st_lpc_wdt.c               |   1 +
 drivers/watchdog/stmp3xxx_rtc_wdt.c         |   1 +
 drivers/watchdog/stpmic1_wdt.c              |   1 +
 drivers/watchdog/sunxi_wdt.c                |   1 +
 drivers/watchdog/tangox_wdt.c               |   1 +
 drivers/watchdog/tegra_wdt.c                |   1 +
 drivers/watchdog/tqmx86_wdt.c               |   1 +
 drivers/watchdog/ts4800_wdt.c               |   1 +
 drivers/watchdog/ts72xx_wdt.c               |   1 +
 drivers/watchdog/twl4030_wdt.c              |   1 +
 drivers/watchdog/uniphier_wdt.c             |   1 +
 drivers/watchdog/via_wdt.c                  |   1 +
 drivers/watchdog/w83627hf_wdt.c             |   1 +
 drivers/watchdog/watchdog_core.c            |  10 +-
 drivers/watchdog/wdat_wdt.c                 |   1 +
 drivers/watchdog/wm831x_wdt.c               |   1 +
 drivers/watchdog/wm8350_wdt.c               |   1 +
 drivers/watchdog/xen_wdt.c                  |   1 +
 drivers/watchdog/ziirave_wdt.c              |   1 +
 include/asm-generic/export.h                |  14 +-
 include/linux/export.h                      |  92 +++++++++++--
 include/linux/module.h                      |   2 +
 init/Kconfig                                |  13 ++
 kernel/module.c                             |  67 +++++++++-
 scripts/Makefile.modpost                    |   4 +-
 scripts/coccinelle/misc/add_namespace.cocci |  23 ++++
 scripts/mod/modpost.c                       | 137 ++++++++++++++++++--
 scripts/mod/modpost.h                       |   9 ++
 scripts/nsdeps                              |  56 ++++++++
 114 files changed, 504 insertions(+), 46 deletions(-)
 create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
 create mode 100644 scripts/nsdeps

-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
