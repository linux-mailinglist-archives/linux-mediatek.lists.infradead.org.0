Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475FC136A5F
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Jan 2020 10:59:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TX1TAROO9r9rK6OD2kPiU6PUtjVF5xTJMtTvC/eN4M0=; b=FwbkgqHY1F018y
	PclzsywlLOv25SsjxAAHh89Ms3U2W0dquKPuti+k6vqmig5dY7D04z8fIaH+EkURWqB8hIIseNwgb
	cuup3TBJ6JS/kQSqzxSHtrg6H7MIQ2uU90Aq4TX1dMvc8EP2FxvxFJ+luobKfS6yg/aUlqmkGDdeP
	TyTXpLHMhCH4wsdD7MI661rAlS9xsEkaonWt9timxn7GgoH5llea7F/4/l+7s5F9cy5yjXQrx2NZr
	SmNLWttEbNWu8YJLAf8EcMW9ka3S7ST97v4h0AH9m42vmnVFFhMYDcp+XnkYwvm/dt+NARvq8eYf9
	JWN/0oh9Fr1D9z03LS5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipr4h-0000xv-Kc; Fri, 10 Jan 2020 09:59:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipr4e-0000xG-3e
 for linux-mediatek@lists.infradead.org; Fri, 10 Jan 2020 09:59:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so1191047wrh.5
 for <linux-mediatek@lists.infradead.org>; Fri, 10 Jan 2020 01:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XNAch+iRgzcJM9NkipHbBgiv58AS6wGypOJbn2kxlwc=;
 b=KnPK8AJNrCnF2oi/JducdcQ5UhSoZHxLAyIRm2a8B3ahDJ0u/LoEu/pZeRQCWwtPHQ
 SVtW1xThuAriI5E/1LRJpjhVTcAbva2h2oxyNO1iZTqoT7AzwmJh+GXhzhBfV4fwXH7T
 8BqF2GcrJdbuT9dFYmeuBFJVgtlCKhGokyFG+trL/Y8P8313wMI4XDGC6vEsvVA6zN1C
 4ke4LCbRKGVba2mY29xjouxrx7+p+QAvtiq7ujZvvg0QCx4C/4/0EOg/oDVBjM1CZoQZ
 pihX0DMtOg/X0BU44fupoEIkoRNaMw9ohTZyC/wk67QgnDBR/O0oU/LQMs3CVa85/eWl
 Bztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=XNAch+iRgzcJM9NkipHbBgiv58AS6wGypOJbn2kxlwc=;
 b=Rgby/mW+nEQHEebCbOkIp6kLkZKUHx4pyMyCCxT2PdvGU12Gk22riVpyNNYFsKx7Y+
 hZgGY0PdQaJDu54UJXuL/evw+ZmnbfUVIfKNYIglCS24HVcmFpUJQvJale/eYdcKhM4A
 q0kxetPv5F1Rq50oTebA+iNAciXgmLLB0tVvze03vI+fCat9++XPGu7jNJx0nFkCnjwS
 /Za6dW/HTTZl5+D5Z3LLIlhrU6eW4Itvv4eGW6n3zBosNvMRXXp0dgSDsDvmt5uvOBMV
 pRIp7OWc/f/FdsNIl+QXW3GuBSFmWO/TiAA9V1sEn3MP0L8cJTAJ78Ll4tdujWdWNBeg
 CU0w==
X-Gm-Message-State: APjAAAV1pb6lcEl2NwdTUvQlp+6sO+hqPd5s96jwDsmk+zEVX965nYdp
 ZoJdDyzVJOVE6YgqeDcsbuDevXABc2M=
X-Google-Smtp-Source: APXvYqxWSdP8sB9g9pTE40eNeeu0/bKTaEmw9+l8NoTKoVVSLi4fWNHZV7Q8puSn0Fr/ZEMDu7v4vA==
X-Received: by 2002:adf:fd87:: with SMTP id d7mr2578715wrr.226.1578650361793; 
 Fri, 10 Jan 2020 01:59:21 -0800 (PST)
Received: from ziggy.stardust ([95.169.227.92])
 by smtp.gmail.com with ESMTPSA id c9sm1577733wmc.47.2020.01.10.01.59.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jan 2020 01:59:21 -0800 (PST)
Subject: Re: Process identical patches in different tree
To: CK Hu <ck.hu@mediatek.com>
References: <1578365790.28495.13.camel@mtksdaap41>
 <e7c8313f-13cd-67b7-ad48-9f1d341bfcb6@gmail.com>
 <b360ec7f-2cf5-d18f-2ef9-90b044c98f3d@gmail.com>
 <1578534821.23751.2.camel@mtksdaap41>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <4d05affd-dab7-d568-31a3-983c7579a600@gmail.com>
Date: Fri, 10 Jan 2020 10:59:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <1578534821.23751.2.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_015924_154164_51E4F587 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, linux-mediatek@lists.infradead.org,
 Dave Airlie <airlied@gmail.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 09/01/2020 02:53, CK Hu wrote:
> Hi, Matthias:
> 
> On Wed, 2020-01-08 at 13:05 +0100, Matthias Brugger wrote:
>> On 08/01/2020 12:14, Matthias Brugger wrote:
>>> Hi CK,
>>>
>>> On 07/01/2020 03:56, CK Hu wrote:
>>>> Hi, Dave, Daniel, Matthias:
>>>>
>>>> In mediatek-drm-next-5.6 [1], I've cherry-pick 3 patches from
>>>> v5.5-next/soc [2] because some drm patches depend on these cmdq patches.
>>>> So these cmdq patches exist in both tree now. I want to know how to
>>>> process this case. I think we could choose one of below way:
>>>>
>>>> 1. Because these cmdq patches are identical in both tree, so each tree
>>>> could do its own upstream and the there would be nothing happen when
>>>> merge.
>>>> 2. Let soc upstream first, and mediatek drm rebase on the latest
>>>> mainline then upstream.
>>>>
>>>> Which one do you prefer?
>>>>
>>>
>>> What we would need is a stable branch with this commits that get merged by both
>>> trees. If I understand correctly that otherwise the SHA of the commits would be
>>> different and that would provoke merge conflicts.
>>>
>>> We should not rely on one tree being merged before the other. AFAIK there is no
>>> hard merge order between trees.
>>>
>>
>> I prepared a branch with the patches I think are relevant for you. Please
>> confirm that this is correct, merge the tree in yours and I'll do the same for
>> v5.5-next/soc
>>
>> <paste>
>>
>> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
>>
>>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>>
>> are available in the Git repository at:
>>
>>   https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/
>> tags/v5.5-next-cmdq-stable
>>
>> for you to fetch changes up to d412f18c9bc791d8951e903de9a68817e3098a6a:
>>
>>   soc: mediatek: cmdq: add cmdq_dev_get_client_reg function (2020-01-08 12:59:57
>> +0100)
>>
>> ----------------------------------------------------------------
>> cmdq patches needed by drm driver to use cmdq interface
>>
>> ----------------------------------------------------------------
>> Bibby Hsieh (4):
>>       soc: mediatek: cmdq: remove OR opertaion from err return
>>       soc: mediatek: cmdq: define the instruction struct
>>       soc: mediatek: cmdq: add polling function
>>       soc: mediatek: cmdq: add cmdq_dev_get_client_reg function
>>
>>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 147
>> ++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------
>>  include/linux/mailbox/mtk-cmdq-mailbox.h |  11 ++++++
>>  include/linux/soc/mediatek/mtk-cmdq.h    |  53 +++++++++++++++++++++++++
>>  3 files changed, 185 insertions(+), 26 deletions(-)
>>
>> </paste>
>>
> 
> I've done in [1], is it what you expect?
> 
> [1]
> https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.6
> 

Looks good to me :)

Regards,
Matthias

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
