Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA0F45786
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 10:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAwjxBn59SjY4xB4d9GtDxxYLwB5THGUIlg+vToKNjY=; b=HryYsFS/BZ4IMN
	+Dvpi9nwI2bxIqq5oQ27KK5BogJxMntL1LxE55c6kg7KjbZPFufz89WHdQN8AmH9pcrFtCO2FUdh7
	vwzH4vLiQAIIJvOEpUD0ICp641U+BrVa10M5if66VrM8v41jM42oXFP/tbRmx8tSLlO9hFpqojdcR
	9/nRmZS5JuXUselPCZ6QqHsoXxjHoThen4jvvG9vIr4p1XHvQzOOw0XQkLBSD3bXVCCb2A9MwxF6R
	mVP5yFS2kF4PRJcfYHo03QHacLcSWEwA/eEkasyvFsvUBIIchG3AyhpOQLZqRA9uP9CQLMqwQmZB+
	fFimPUnev/Ec1f4Ta8Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhcd-0006YO-Ba; Fri, 14 Jun 2019 08:31:43 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhcY-0006X9-DY
 for linux-mediatek@lists.infradead.org; Fri, 14 Jun 2019 08:31:41 +0000
Received: by mail-qt1-x844.google.com with SMTP id n11so1539034qtl.5
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Jun 2019 01:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WFDrQf4njTwrCLjFsRfgBfcro7/dqMXuf3KcCnlG7eU=;
 b=i23VuOuZ0hfuRp/LswwKqj7gDp6Tlmafsj4Mm0OMRl4Vx/LbKVjew4IdJyh3RXRsBS
 oJ/pXT42q4cyS1GSeDiksQD1bOpT84+3YUseJco/7CZjfBO5lFktZvECavHicuyZdmvD
 u7U+7MQWSzNnpAJaO1w7qNqlIB/B345yxOQ8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WFDrQf4njTwrCLjFsRfgBfcro7/dqMXuf3KcCnlG7eU=;
 b=VE87bDITzT2XFoxoNVT309zQ/IWrZDtHVuoBYrnddHAUk9d/J6e1dKfMLqLKsuLYxz
 FYGzBDH1kgTx/InP15OaiavXhaUt5sSAkAprv96VFxtMAPaVRt6ilQSff6doAscw4HRn
 XjErKG+EQKnhf6oNLrVymgeCzrAOpxsa9yHiB10vf5pXrsWEp8rEsxt9gsOllKjJyYUx
 NyK23aYCar1kF63PhxraR5K2FIkKiB+RlmF4DLCU5jqvxttfv77Zwh3T81Dv9fmuyX8i
 u/FdUlIRN8/F/kNiui7M5Z0/SD6rw71+glwTfcyGpel/bRcP9Cv6d9QgBFlU1lTIxiwj
 HnBQ==
X-Gm-Message-State: APjAAAWEBURLWO8ET9rYqI9NMHfvBwLfSojDb77xYhWBQ2wwZCjcOB7S
 oZWXq+BXp34vjsbdSdEg1uj7xV/kDYJk3vlCMuW9qg==
X-Google-Smtp-Source: APXvYqwJxz2R9C2u4+JZCsLN1H0xVaea7YSFUZIYK7HKRBDxLRfIPlaG5zng2MeCFRi/Ky0Kb1OnwOXd9vUp1mXjvOw=
X-Received: by 2002:ac8:279b:: with SMTP id w27mr7486636qtw.159.1560501096909; 
 Fri, 14 Jun 2019 01:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190612085349.21243-1-bibby.hsieh@mediatek.com>
 <20190612085349.21243-12-bibby.hsieh@mediatek.com>
In-Reply-To: <20190612085349.21243-12-bibby.hsieh@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 14 Jun 2019 16:31:26 +0800
Message-ID: <CANMq1KDWOr8f6nx7CS9Z_0OCwZFSTxaAT=333xXE-R5FJfEyfg@mail.gmail.com>
Subject: Re: [PATCH v8 11/12] soc: mediatek: cmdq: add cmdq_dev_get_client_reg
 function
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_013138_492025_11758AB3 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>, CK HU <ck.hu@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Houlong Wei <houlong.wei@mediatek.com>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 4:53 PM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
>
> GCE cannot know the register base address, this function
> can help cmdq client to get the cmdq_client_reg structure.
>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 24 ++++++++++++++++++++++++
>  include/linux/soc/mediatek/mtk-cmdq.h  | 20 ++++++++++++++++++++
>  2 files changed, 44 insertions(+)
>
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 70ad4d806fac..fac4d33fd520 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -27,6 +27,30 @@ struct cmdq_instruction {
>         u8 op;
>  };
>
> +int cmdq_dev_get_client_reg(struct device *dev,
> +                           struct cmdq_client_reg *client_reg, int idx)
> +{
> +       struct of_phandle_args spec;
> +
> +       if (!client_reg)
> +               return -EINVAL;
> +
> +       if (of_parse_phandle_with_args(dev->of_node, "mediatek,gce-client-reg",
> +                                      "#subsys-cells", idx, &spec)) {
> +               dev_err(dev, "can't parse gce-client-reg property (%d)", idx);
> +
> +               return -EINVAL;
> +       }
> +
> +       client_reg->subsys = spec.args[0];
> +       client_reg->offset = spec.args[1];
> +       client_reg->size = spec.args[2];
> +       of_node_put(spec.np);
> +
> +       return 0;
> +}
> +EXPORT_SYMBOL(cmdq_dev_get_client_reg);
> +
>  static void cmdq_client_timeout(struct timer_list *t)
>  {
>         struct cmdq_client *client = from_timer(client, t, timer);
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index a345870a6d10..2e2a2274c231 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -15,6 +15,12 @@
>
>  struct cmdq_pkt;
>
> +struct cmdq_client_reg {
> +       u8 subsys;
> +       u16 offset;
> +       u16 size;
> +};
> +
>  struct cmdq_client {
>         spinlock_t lock;
>         u32 pkt_cnt;
> @@ -142,4 +148,18 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
>   */
>  int cmdq_pkt_flush(struct cmdq_pkt *pkt);
>
> +/**
> + * cmdq_dev_get_client_reg() - parse cmdq client reg from the device node of CMDQ client

Minor nit: this line is over 80 chars.

> + * @dev:       device of CMDQ mailbox clienti
> + * @client_reg: CMDQ client reg pointer
> + * @idx:       the index of desired reg
> + *
> + * Return: 0 for success; else the error code is returned
> + *
> + * Help CMDQ client pasing the cmdq client reg
> + * from the device node of CMDQ client.
> + */
> +int cmdq_dev_get_client_reg(struct device *dev,
> +                           struct cmdq_client_reg *client_reg, int idx);
> +
>  #endif /* __MTK_CMDQ_H__ */
> --
> 2.18.0
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
