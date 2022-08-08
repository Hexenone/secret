import { useBackend } from '../backend';
import { LabeledList, NumberInput, Section, Stack } from '../components';

export const TaxManagerContent = (props, context) => {
  const { act, data } = useBackend(context);
  const {
    taxes = [],
    accounts = [],
  } = data;
  return (
    <Stack vertical>
      <Stack.Item>
        <Section title="Taxes">
          <LabeledList>
            {taxes.map(tax => (
              <LabeledList.Item
                key={tax.name}
                label={tax.name}
              >
                <NumberInput
                  value={tax.value * 100}
                  minValue={0}
                  maxValue={100}
                  step={1}
                  onChange={(e, value) => act('change_tax', {
                    tax: tax.name,
                    new_value: value/100,
                  })}
                />
              </LabeledList.Item>
            ))}
          </LabeledList>
        </Section>
      </Stack.Item>
      <Stack.Item>
        <Section title="Salaries">
          <LabeledList>
            {accounts.map(account => (
              <LabeledList.Item
                key={account.holder}
                label={account.holder}
              >
                <NumberInput
                  value={account.salary}
                  minValue={0}
                  maxValue={1000}
                  step={0.1}
                  onChange={(e, value) => act('change_salary', {
                    account_id: account.account_id,
                    new_value: value,
                  })}
                />
              </LabeledList.Item>
            ))}
          </LabeledList>
        </Section>
      </Stack.Item>
    </Stack>
  );
};
