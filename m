Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244E61E0162
	for <lists+linux-mediatek@lfdr.de>; Sun, 24 May 2020 20:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwVt/qx5VRNsY41xT5PW+HIg9/zuIgZrb7LyinUFgfQ=; b=Jl8VJcwzDdqD5R
	6XHCQpoidi0CCzn8A4jjxjWObIyByrMxGjLWNET+rsRuP8AS3RzmHA4rWKyi+ZZt4z/ZKQ6HHinG5
	tK2lu5m5ksGcPyUAytchqIPvpFMkTx6Vw/OwXwhgfOjifsg+M/Ed2O7K30AhK518DyaezTWPrupiE
	2LE8DHSbiXSv9d9Ci4iW2o5t1mZ2Zw5tq0Y+rXKtUGukCk8xSfY8kRc31CwCp3HZgi6aXZaVjm+2b
	BP5ggMK12DQLQ2QmzZa0RkmJR5SH7i9d0QWqD64Igk+WtaILxt47CR5fJVFCdcOzhEQdTw3xLbsnn
	5VM4PSP1hT7EJyntWylg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcv6w-00043i-4N; Sun, 24 May 2020 18:12:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcv6j-0003uA-B5; Sun, 24 May 2020 18:12:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id r9so3150216wmh.2;
 Sun, 24 May 2020 11:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4J/cm6jvLXDE3mCoSLia2FeIV3HtrP4CV1b39kQ3A/8=;
 b=IwKd39mmRaOvvYb3tFeD3GQOI73bQxBSdw8+VeV9Ldta0xF6HUUY0pZ5Mm41nfIJO7
 rnMzuWCFKA14bUxN+tCNZMMCEe08sZv7dycfo5/5vuMjiaZGja0tafF485OS0RDHbxft
 YmXcSiYVOjWJpisIZaKE8qe6RR0YPPAVfosb6dYCeOcFDLsKuyATjmVe08ZKvvtdQ5Nb
 hjopG+6v4yUZDR5MQFGfB68QF8P/+10MVTxh9z/5W9WU4HXz0CO5IAiOnHIIYqlDjVWv
 E/tnCHlAs5zp/9AOP7l2TSo/+xdvyntAB0r2jrb7Vzyrg7X0W4hFeUD+c0uRJFW9OoUd
 fg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=4J/cm6jvLXDE3mCoSLia2FeIV3HtrP4CV1b39kQ3A/8=;
 b=OgwebJJOy5WkFsNg8h1jPBA+kfNSQ3UJIhwnrphWUw+vtIR0MRm0trwoSa8aBqQr1Z
 PGc9o+M+ay49TsK8VtaX8ETKK5urnL78MauZPDqOImClBCeTyQcbHWVutFkeqweKPVdY
 L5iIUYAPFlCAorNdn70Nw22xf9XaU040HOXsHidhKl6MM0eTLKUc4wkYsuIomsXDTuFW
 vJkaU6wd5SbQo58JV+OwASxV+k8DyyWFBgrOmmWDZdt4sVgap4EKsGXDDMEoiHslQ8ri
 JqsaOEc9olsfXPm94/rtZoE01nO4h7CjCSrHNIQRMZlfCoQWeLs51zzUKA0avULXsXyE
 d0CQ==
X-Gm-Message-State: AOAM530UwRrlZtU55tgjnwx4cNelJ9mccNPBdDefah2psKc/mIB4V9zB
 bV7+FF5ofUqzZWYy3WB7pic=
X-Google-Smtp-Source: ABdhPJwaS92JredqOU081/tbg2UiMc8CAJPDQVSoDSEoiqkJRCMt64vGLz1jK102Fmv03ZouttLp8w==
X-Received: by 2002:a1c:451:: with SMTP id 78mr1936944wme.83.1590343939406;
 Sun, 24 May 2020 11:12:19 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id e5sm7979764wrw.19.2020.05.24.11.12.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 May 2020 11:12:18 -0700 (PDT)
Subject: Re: [PATCH v5 07/13] soc: mediatek: cmdq: add write_s function
To: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-8-git-send-email-dennis-yc.hsieh@mediatek.com>
 <58575c2c-0b5a-55c0-f3b0-082bfd4b6144@gmail.com>
 <1590341186.31286.16.camel@mtkswgap22>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <f48d7566-d814-35e0-e04a-756687ed9e2b@gmail.com>
Date: Sun, 24 May 2020 20:12:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1590341186.31286.16.camel@mtkswgap22>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_111221_391022_E685D7AD 
X-CRM114-Status: GOOD (  26.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, wsd_upstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 HS Liao <hs.liao@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 24/05/2020 19:26, Dennis-YC Hsieh wrote:
> Hi Mattias,
> 
> Thanks for your comment.
> 
> On Sat, 2020-05-16 at 20:14 +0200, Matthias Brugger wrote:
>>
>> On 08/03/2020 11:52, Dennis YC Hsieh wrote:
>>> add write_s function in cmdq helper functions which
>>> writes value contains in internal register to address
>>> with large dma access support.
>>>
>>> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
>>> Reviewed-by: CK Hu <ck.hu@mediatek.com>
>>> ---
>>>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 34 +++++++++++++++++++++++-
>>>  include/linux/mailbox/mtk-cmdq-mailbox.h |  2 ++
>>>  include/linux/soc/mediatek/mtk-cmdq.h    | 20 ++++++++++++++
>>>  3 files changed, 55 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
>>> index 33153d17c9d9..90f1ff2b4b00 100644
>>> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
>>> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
>>> @@ -18,6 +18,10 @@ struct cmdq_instruction {
>>>  	union {
>>>  		u32 value;
>>>  		u32 mask;
>>> +		struct {
>>> +			u16 arg_c;
>>> +			u16 src_reg;
>>> +		};
>>>  	};
>>>  	union {
>>>  		u16 offset;
>>> @@ -29,7 +33,7 @@ struct cmdq_instruction {
>>>  		struct {
>>>  			u8 sop:5;
>>>  			u8 arg_c_t:1;
>>> -			u8 arg_b_t:1;
>>> +			u8 src_t:1;
>>
>> fixing patch 6/13 please. seems the struct should be added in this patch.
> 
> ok, will move to this patch.
> 
>>
>>>  			u8 dst_t:1;
>>>  		};
>>>  	};
>>> @@ -222,6 +226,34 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
>>>  }
>>>  EXPORT_SYMBOL(cmdq_pkt_write_mask);
>>>  
>>> +int cmdq_pkt_write_s(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
>>> +		     u16 addr_low, u16 src_reg_idx, u32 mask)
>>> +{
>>> +	struct cmdq_instruction inst = { {0} };
>>> +	int err;
>>> +
>>> +	if (mask != U32_MAX) {
>>> +		inst.op = CMDQ_CODE_MASK;
>>> +		inst.mask = ~mask;
>>> +		err = cmdq_pkt_append_command(pkt, inst);
>>> +		if (err < 0)
>>> +			return err;
>>> +
>>> +		inst.mask = 0;
>>> +		inst.op = CMDQ_CODE_WRITE_S_MASK;
>>> +	} else {
>>> +		inst.op = CMDQ_CODE_WRITE_S;
>>> +	}
>>> +
>>> +	inst.src_t = CMDQ_REG_TYPE;
>>
>> Not defined.
>> Please make sure that every patch compiles on it's own and does not add a
>> regression. This is very helpful if we have to bisect the kernel in the future.
> 
> May I know which part not defined? The src_t defined on top of this
> patch and CMDQ_REG_TYPE defined in last patc (see 06/13).

correct, sorry for the noise.

> 
>>
>>> +	inst.sop = high_addr_reg_idx;
>>> +	inst.offset = addr_low;
>>> +	inst.src_reg = src_reg_idx;
>>> +
>>> +	return cmdq_pkt_append_command(pkt, inst);
>>> +}
>>> +EXPORT_SYMBOL(cmdq_pkt_write_s);
>>> +
>>>  int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
>>>  {
>>>  	struct cmdq_instruction inst = { {0} };
>>> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
>>> index 121c3bb6d3de..8ef87e1bd03b 100644
>>> --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
>>> +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
>>> @@ -59,6 +59,8 @@ enum cmdq_code {
>>>  	CMDQ_CODE_JUMP = 0x10,
>>>  	CMDQ_CODE_WFE = 0x20,
>>>  	CMDQ_CODE_EOC = 0x40,
>>> +	CMDQ_CODE_WRITE_S = 0x90,
>>> +	CMDQ_CODE_WRITE_S_MASK = 0x91,
>>>  	CMDQ_CODE_LOGIC = 0xa0,
>>>  };
>>>  
>>> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
>>> index 83340211e1d3..c72d826d8934 100644
>>> --- a/include/linux/soc/mediatek/mtk-cmdq.h
>>> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
>>> @@ -12,6 +12,8 @@
>>>  #include <linux/timer.h>
>>>  
>>>  #define CMDQ_NO_TIMEOUT		0xffffffffu
>>> +#define CMDQ_ADDR_HIGH(addr)	((u32)(((addr) >> 16) & GENMASK(31, 0)))
>>> +#define CMDQ_ADDR_LOW(addr)	((u16)(addr) | BIT(1))
>>>  
>>>  struct cmdq_pkt;
>>>  
>>> @@ -102,6 +104,24 @@ int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value);
>>>  int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
>>>  			u16 offset, u32 value, u32 mask);
>>>  
>>> +/**
>>> + * cmdq_pkt_write_s() - append write_s command to the CMDQ packet
>>> + * @pkt:	the CMDQ packet
>>> + * @high_addr_reg_idx:	internal regisger ID which contains high address of pa
>>
>> s/regisger/register
> 
> will fix
> 
>>
>>> + * @addr_low:	low address of pa
>>> + * @src_reg_idx:	the CMDQ internal register ID which cache source value
>>> + * @mask:	the specified target address mask, use U32_MAX if no need
>>> + *
>>> + * Return: 0 for success; else the error code is returned
>>> + *
>>> + * Support write value to physical address without subsys. Use CMDQ_ADDR_HIGH()
>>> + * to get high addrees and call cmdq_pkt_assign() to assign value into internal
>>
>> s/addrees/address
> 
> will fix
> 
>>
>>> + * reg. Also use CMDQ_ADDR_LOW() to get low address for addr_low parameterwhen
>>
>> s/parameterwhen/parameter when
> 
> will fix
> 
>>
>>> + * call to this function.
>>> + */
>>> +int cmdq_pkt_write_s(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
>>> +		     u16 addr_low, u16 src_reg_idx, u32 mask);
>>> +
>>
>> In general I wonder if we shouldn't provide two functions, one that writes a
>> mask and on for the else case.
> 
> ok, I'll separate this function to cmdq_pkt_write_s and
> cmdq_pkt_write_s_mask. Let the client choose which case is more
> suitable.

Sound good, thanks.


> 
> 
>>
>> Regards,
>> Matthias
>>
>>>  /**
>>>   * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
>>>   * @pkt:	the CMDQ packet
>>>
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
