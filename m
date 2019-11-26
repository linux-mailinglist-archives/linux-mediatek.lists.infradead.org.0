Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB67F1098A9
	for <lists+linux-mediatek@lfdr.de>; Tue, 26 Nov 2019 06:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4Rzf3t6BX3XqJ3dhhkhtqQHZHUsVWosbyO2M0L3CAk=; b=pIN3wfng8yoGxI
	rUGtVrQ+KIEYXZlA2o4GTekDSnHngzuYnuzMgkPYuFJmui7V8eVWSO9oEdgjdlXUf9W+eNtVAKuwS
	teP+0WcVt4l9icWn2yfOgwFag8bSRhHXpqqhRUtGo65v7mbEyyxeNOEM6M1AifoU2JYCsfbshkVtm
	kEq2t6u3tWrVYqOwPDWW2Fl0vN4+aVXBsvYBArcVOuEBZr3u+KR+QWS5PbZ6cz691ryjK747lHD2b
	70y/DvdlP31jNkSmGnI94jAcff0dpg+NA6jSYSSfw1uzQVg0+vv+T1udzFEgX1TLWyfODeXqsBrAr
	LRV56kogq7LTa2o4E7yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZTLh-0000YC-CL; Tue, 26 Nov 2019 05:25:17 +0000
Received: from smail.rz.tu-ilmenau.de ([141.24.186.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZTLd-00089b-Rh
 for linux-mediatek@lists.infradead.org; Tue, 26 Nov 2019 05:25:15 +0000
Received: from [192.168.178.76] (unknown [92.193.195.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smail.rz.tu-ilmenau.de (Postfix) with ESMTPSA id 9E43C58006E;
 Tue, 26 Nov 2019 06:25:03 +0100 (CET)
Subject: Re: [PATCH] mt76: Off by one in mt76_calc_rx_airtime()
To: Dan Carpenter <dan.carpenter@oracle.com>, Felix Fietkau <nbd@nbd.name>
References: <20191121213935.2cbgh3qmd4hv4v5a@kili.mountain>
From: Markus Theil <markus.theil@tu-ilmenau.de>
Autocrypt: addr=markus.theil@tu-ilmenau.de; keydata=
 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
 sGZPq8zmOtvOyZtafA==
Message-ID: <6872919d-3ca8-6fa5-ac9b-1b0f016e709b@tu-ilmenau.de>
Date: Tue, 26 Nov 2019 06:25:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191121213935.2cbgh3qmd4hv4v5a@kili.mountain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_212514_200355_40359300 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.24.186.67 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, kernel-janitors@vger.kernel.org,
 linux-wireless@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 11/26/19 5:49 AM, Dan Carpenter wrote:
> The sband->bitrates[] array has "sband->n_bitrates" elements so this
> check needs to be >= instead of > or we could read beyond the end of the
> array.
>
> These values come from when we call mt76_register_device():
>
> 	ret = mt76_register_device(&dev->mt76, true, mt7603_rates,
> 				   ARRAY_SIZE(mt7603_rates));
>
> Here sband->bitrates[] is mt7603_rates[] and ->n_bitrates is the
> ARRAY_SIZE()
>
> Fixes: 5ce09c1a7907 ("mt76: track rx airtime for airtime fairness and survey")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/net/wireless/mediatek/mt76/airtime.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/mediatek/mt76/airtime.c b/drivers/net/wireless/mediatek/mt76/airtime.c
> index 55116f395f9a..a4a785467748 100644
> --- a/drivers/net/wireless/mediatek/mt76/airtime.c
> +++ b/drivers/net/wireless/mediatek/mt76/airtime.c
> @@ -242,7 +242,7 @@ u32 mt76_calc_rx_airtime(struct mt76_dev *dev, struct mt76_rx_status *status,
>  			return 0;
>  
>  		sband = dev->hw->wiphy->bands[status->band];
> -		if (!sband || status->rate_idx > sband->n_bitrates)
> +		if (!sband || status->rate_idx >= sband->n_bitrates)
>  			return 0;
>  
>  		rate = &sband->bitrates[status->rate_idx];

This should fix the division by zero error I sometimes got yesterday.

[   63.115806] divide error: 0000 [#1] PREEMPT SMP NOPTI
[   63.121054] CPU: 0 PID: 225 Comm: kworker/u8:2 Tainted: G        W         5.4.0-rc7-1-01110-g19b7e21c55c8 #39
[   63.131331] Hardware name: PC Engines apu2/apu2, BIOS v4.10.0.3 11/07/2019
[   63.138399] Workqueue: mt76u mt76u_tx_status_data [mt76_usb]
[   63.144258] RIP: 0010:mt76_calc_rx_airtime+0x12b/0x150 [mt76]
[   63.150281] Code: 8d 34 76 48 8d 34 b1 0f b6 4e 07 66 85 c9 74 25 66 83 f9 01 75 1c b9 24 00 00 00 89 d0 0f b7 76 04 c1 e0 05 8d 04 d0 01 c0 99 <f7> fe 01 c8 c3 31 c0 c3 0f 0b c3 44 89 c8 83 e0 01 3c 01 19 c9 83
[   63.169699] RSP: 0018:ffffbd694032fcf0 EFLAGS: 00010216
[   63.175176] RAX: 0000000000002850 RBX: 0000000000000001 RCX: 00000000000000ca
[   63.182535] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffa20068253538
[   63.189983] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[   63.197381] R10: 0000000000000000 R11: ffffbd694032fcb0 R12: ffffbd694032fdb0
[   63.204782] R13: 0000000000000000 R14: ffffbd694032fd00 R15: ffffa20068251e40
[   63.212228] FS:  0000000000000000(0000) GS:ffffa2006aa00000(0000) knlGS:0000000000000000
[   63.220614] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   63.226500] CR2: 00007fe65ba85cb0 CR3: 00000001293b6000 CR4: 00000000000406f0
[   63.233841] Call Trace:
[   63.236410]  mt76_calc_tx_airtime+0xf4/0x190 [mt76]
[   63.241464]  mt76x02_send_tx_status+0x1cd/0x3f0 [mt76x02_lib]
[   63.247430]  mt76x02_tx_status_data+0x54/0x80 [mt76x02_lib]
[   63.253186]  mt76u_tx_status_data+0x63/0xc0 [mt76_usb]
[   63.258451]  process_one_work+0x1e2/0x3b0
[   63.262533]  worker_thread+0x4a/0x3d0
[   63.266306]  kthread+0xfb/0x130
[   63.269550]  ? process_one_work+0x3b0/0x3b0
[   63.273893]  ? kthread_park+0x90/0x90
[   63.277677]  ret_from_fork+0x22/0x40
[   63.281411] Modules linked in: ccm bridge stp llc mt76x2u mt76x2_common mt76x02_usb mt76_usb mt76x02_lib mt76 nft_masq nft_chain_nat nf_nat nft_reject_inet nf_reject_ipv4 nf_reject_ipv6 nft_reject nft_ct nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 libcrc32c nf_tables_set nf_tables nfnetlink ath10k_pci ath10k_core amd64_edac_mod edac_mce_amd ath kvm_amd mac80211 kvm irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel aesni_intel pcengines_apuv2 cfg80211 gpio_keys_polled crypto_simd input_polldev gpio_amd_fch cryptd igb glue_helper pcspkr fam15h_power sp5100_tco k10temp i2c_piix4 rfkill i2c_algo_bit ccp libarc4 dca rng_core uio_pdrv_genirq evdev leds_gpio uio mac_hid coreboot_table acpi_cpufreq pinctrl_amd sr_mod cdrom ip_tables x_tables ext4 crc32c_generic crc16 mbcache jbd2 sd_mod usb_storage ahci libahci libata xhci_pci sdhci_pci xhci_hcd scsi_mod cqhci sdhci ehci_pci crc32c_intel ehci_hcd mmc_core gpio_keys
[   63.365937] ---[ end trace f13e9cdc5f55db9e ]---
[   63.370802] RIP: 0010:mt76_calc_rx_airtime+0x12b/0x150 [mt76]
[   63.376807] Code: 8d 34 76 48 8d 34 b1 0f b6 4e 07 66 85 c9 74 25 66 83 f9 01 75 1c b9 24 00 00 00 89 d0 0f b7 76 04 c1 e0 05 8d 04 d0 01 c0 99 <f7> fe 01 c8 c3 31 c0 c3 0f 0b c3 44 89 c8 83 e0 01 3c 01 19 c9 83
[   63.396220] RSP: 0018:ffffbd694032fcf0 EFLAGS: 00010216
[   63.401660] RAX: 0000000000002850 RBX: 0000000000000001 RCX: 00000000000000ca
[   63.409145] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffa20068253538
[   63.416505] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[   63.423988] R10: 0000000000000000 R11: ffffbd694032fcb0 R12: ffffbd694032fdb0
[   63.431425] R13: 0000000000000000 R14: ffffbd694032fd00 R15: ffffa20068251e40
[   63.438793] FS:  0000000000000000(0000) GS:ffffa2006aa00000(0000) knlGS:0000000000000000
[   63.447141] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   63.453216] CR2: 00007fe65ba85cb0 CR3: 00000001293b6000 CR4: 00000000000406f0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
